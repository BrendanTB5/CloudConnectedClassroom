/**
 * @file http_server.c
 * @brief HTTP server (HyperText Transfer Protocol)
 *
 * @section License
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 *
 * Copyright (C) 2010-2019 Oryx Embedded SARL. All rights reserved.
 *
 * This file is part of CycloneTCP Open.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * @section Description
 *
 * Using the HyperText Transfer Protocol, the HTTP server delivers web pages
 * to browsers as well as other data files to web-based applications. Refers
 * to the following RFCs for complete details:
 * - RFC 1945: Hypertext Transfer Protocol - HTTP/1.0
 * - RFC 2616: Hypertext Transfer Protocol - HTTP/1.1
 * - RFC 2617: HTTP Authentication: Basic and Digest Access Authentication
 * - RFC 2818: HTTP Over TLS
 *
 * @author Oryx Embedded SARL (www.oryx-embedded.com)
 * @version 1.9.6
 **/

//Switch to the appropriate trace level
#define TRACE_LEVEL HTTP_TRACE_LEVEL

//Dependencies
#include <stdlib.h>
#include "core/net.h"
#include "http/http_server.h"
#include "http/http_server_auth.h"
#include "http/http_server_misc.h"
#include "http/mime.h"
#include "http/ssi.h"
#include "debug.h"

//Check TCP/IP stack configuration
#if (HTTP_SERVER_SUPPORT == ENABLED)


/**
 * @brief Initialize settings with default values
 * @param[out] settings Structure that contains HTTP server settings
 **/

void httpServerGetDefaultSettings(HttpServerSettings *settings)
{
   //The HTTP server is not bound to any interface
   settings->interface = NULL;

   //Listen to port 80
   settings->port = HTTP_PORT;
   //Maximum length of the pending connection queue
   settings->backlog = HTTP_SERVER_BACKLOG;

   //Client connections
   settings->maxConnections = 0;
   settings->connections = NULL;

   //Specify the server's root directory
   strcpy(settings->rootDirectory, "/");
   //Set default home page
   strcpy(settings->defaultDocument, "index.htm");

#if (HTTP_SERVER_TLS_SUPPORT == ENABLED)
   //TLS initialization callback function
   settings->tlsInitCallback = NULL;
#endif

#if (HTTP_SERVER_BASIC_AUTH_SUPPORT == ENABLED || HTTP_SERVER_DIGEST_AUTH_SUPPORT == ENABLED)
   //Random data generation callback function
   settings->randCallback = NULL;
   //HTTP authentication callback function
   settings->authCallback = NULL;
#endif

   //CGI callback function
   settings->cgiCallback = NULL;
   //HTTP request callback function
   settings->requestCallback = NULL;
   //URI not found callback function
   settings->uriNotFoundCallback = NULL;
}


/**
 * @brief HTTP server initialization
 * @param[in] context Pointer to the HTTP server context
 * @param[in] settings HTTP server specific settings
 * @return Error code
 **/

error_t httpServerInit(HttpServerContext *context, const HttpServerSettings *settings)
{
   error_t error;
   uint_t i;
   HttpConnection *connection;

   //Debug message
   TRACE_INFO("Initializing HTTP server...\r\n");

   //Ensure the parameters are valid
   if(context == NULL || settings == NULL)
      return ERROR_INVALID_PARAMETER;

   //Check settings
   if(settings->maxConnections == 0 || settings->connections == NULL)
      return ERROR_INVALID_PARAMETER;

   //Clear the HTTP server context
   memset(context, 0, sizeof(HttpServerContext));

   //Save user settings
   context->settings = *settings;
   //Client connections
   context->connections = settings->connections;

   //Create a semaphore to limit the number of simultaneous connections
   if(!osCreateSemaphore(&context->semaphore, context->settings.maxConnections))
      return ERROR_OUT_OF_RESOURCES;

   //Loop through client connections
   for(i = 0; i < context->settings.maxConnections; i++)
   {
      //Point to the structure representing the client connection
      connection = &context->connections[i];

      //Initialize the structure
      memset(connection, 0, sizeof(HttpConnection));

      //Create an event object to manage connection lifetime
      if(!osCreateEvent(&connection->startEvent))
         return ERROR_OUT_OF_RESOURCES;
   }

#if (HTTP_SERVER_TLS_SUPPORT == ENABLED && TLS_TICKET_SUPPORT == ENABLED)
   //Initialize ticket encryption context
   error = tlsInitTicketContext(&context->tlsTicketContext);
   //Any error to report?
   if(error)
      return error;
#endif

#if (HTTP_SERVER_DIGEST_AUTH_SUPPORT == ENABLED)
   //Create a mutex to prevent simultaneous access to the nonce cache
   if(!osCreateMutex(&context->nonceCacheMutex))
      return ERROR_OUT_OF_RESOURCES;
#endif

   //Open a TCP socket
   context->socket = socketOpen(SOCKET_TYPE_STREAM, SOCKET_IP_PROTO_TCP);
   //Failed to open socket?
   if(context->socket == NULL)
      return ERROR_OPEN_FAILED;

   //Set timeout for blocking functions
   error = socketSetTimeout(context->socket, INFINITE_DELAY);
   //Any error to report?
   if(error)
      return error;

   //Associate the socket with the relevant interface
   error = socketBindToInterface(context->socket, settings->interface);
   //Unable to bind the socket to the desired interface?
   if(error)
      return error;

   //Bind newly created socket to port 80
   error = socketBind(context->socket, &IP_ADDR_ANY, settings->port);
   //Failed to bind socket to port 80?
   if(error)
      return error;

   //Place socket in listening state
   error = socketListen(context->socket, settings->backlog);
   //Any failure to report?
   if(error)
      return error;

   //Successful initialization
   return NO_ERROR;
}


/**
 * @brief Start HTTP server
 * @param[in] context Pointer to the HTTP server context
 * @return Error code
 **/

error_t httpServerStart(HttpServerContext *context)
{
   uint_t i;

   //Debug message
   TRACE_INFO("Starting HTTP server...\r\n");

   //Make sure the HTTP server context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Loop through client connections
   for(i = 0; i < context->settings.maxConnections; i++)
   {
      //Create a task to service a given HTTP client connection
      context->connections[i].taskHandle = osCreateTask("HTTP Connection",
         httpConnectionTask, &context->connections[i],
         HTTP_SERVER_STACK_SIZE, HTTP_SERVER_PRIORITY);

      //Unable to create the task?
      if(context->connections[i].taskHandle == OS_INVALID_HANDLE)
         return ERROR_OUT_OF_RESOURCES;
   }

   //Create the HTTP server listener task
   context->taskHandle = osCreateTask("HTTP Listener", httpListenerTask,
      context, HTTP_SERVER_STACK_SIZE, HTTP_SERVER_PRIORITY);

   //Unable to create the task?
   if(context->taskHandle == OS_INVALID_HANDLE)
      return ERROR_OUT_OF_RESOURCES;

   //The HTTP server has successfully started
   return NO_ERROR;
}


/**
 * @brief HTTP server listener task
 * @param[in] param Pointer to the HTTP server context
 **/

void httpListenerTask(void *param)
{
   uint_t i;
   uint_t counter;
   uint16_t clientPort;
   IpAddr clientIpAddr;
   HttpServerContext *context;
   HttpConnection *connection;
   Socket *socket;

   //Task prologue
   osEnterTask();

   //Retrieve the HTTP server context
   context = (HttpServerContext *) param;

   //Process incoming connections to the server
   for(counter = 1; ; counter++)
   {
      //Debug message
      TRACE_INFO("Ready to accept a new connection...\r\n");

      //Limit the number of simultaneous connections to the HTTP server
      osWaitForSemaphore(&context->semaphore, INFINITE_DELAY);

      //Loop through the connection table
      for(i = 0; i < context->settings.maxConnections; i++)
      {
         //Point to the current connection
         connection = &context->connections[i];

         //Ready to service the client request?
         if(!connection->running)
         {
            //Accept an incoming connection
            socket = socketAccept(context->socket, &clientIpAddr, &clientPort);

            //Make sure the socket handle is valid
            if(socket != NULL)
            {
               //Debug message
               TRACE_INFO("Connection #%u established with client %s port %" PRIu16 "...\r\n",
                  counter, ipAddrToString(&clientIpAddr, NULL), clientPort);

               //Reference to the HTTP server settings
               connection->settings = &context->settings;
               //Reference to the HTTP server context
               connection->serverContext = context;
               //Reference to the new socket
               connection->socket = socket;

               //Set timeout for blocking functions
               socketSetTimeout(connection->socket, HTTP_SERVER_TIMEOUT);

               //The client connection task is now running...
               connection->running = TRUE;
               //Service the current connection request
               osSetEvent(&connection->startEvent);

               //We are done
               break;
            }
         }
      }
   }
}


/**
 * @brief Task that services requests from an active connection
 * @param[in] param Structure representing an HTTP connection with a client
 **/

void httpConnectionTask(void *param)
{
   error_t error;
   uint_t counter;
   HttpConnection *connection;

   //Task prologue
   osEnterTask();

   //Point to the structure representing the HTTP connection
   connection = (HttpConnection *) param;

   //Endless loop
   while(1)
   {
      //Wait for an incoming connection attempt
      osWaitForEvent(&connection->startEvent, INFINITE_DELAY);

      //Initialize status code
      error = NO_ERROR;

      //Check status code
      if(!error)
      {
         //Process incoming requests
         for(counter = 0; counter < HTTP_SERVER_MAX_REQUESTS; counter++)
         {
            //Debug message
            TRACE_INFO("Waiting for request...\r\n");

            //Clear request header
            memset(&connection->request, 0, sizeof(HttpRequest));
            //Clear response header
            memset(&connection->response, 0, sizeof(HttpResponse));

            //Read the HTTP request header and parse its contents
            error = httpReadRequestHeader(connection);
            //Any error to report?
            if(error)
            {
               //Debug message
               TRACE_INFO("No HTTP request received or parsing error...\r\n");
               break;
            }

            //Debug message
            TRACE_INFO("Sending HTTP response to the client...\r\n");
            
            

            //Check status code
            if(!error)
            {
               //Default HTTP header fields
               httpInitResponseHeader(connection);

               //Invoke user-defined callback, if any
               if(connection->settings->requestCallback != NULL)
               {
                  error = connection->settings->requestCallback(connection,
                     connection->request.uri);
               }
               else
               {
                  //Keep processing...
                  error = ERROR_NOT_FOUND;
               }

               //Check status code
               if(error == ERROR_NOT_FOUND)
               {
#if (HTTP_SERVER_SSI_SUPPORT == ENABLED)
                  //Use server-side scripting to dynamically generate HTML code?
                  if(httpCompExtension(connection->request.uri, ".stm") ||
                     httpCompExtension(connection->request.uri, ".shtm") ||
                     httpCompExtension(connection->request.uri, ".shtml"))
                  {
                     //SSI processing (Server Side Includes)
                     error = ssiExecuteScript(connection, connection->request.uri, 0);
                  }
                  else
#endif
                  {
                     //Set the maximum age for static resources
                     connection->response.maxAge = HTTP_SERVER_MAX_AGE;

                     //Send the contents of the requested page
                     error = httpSendResponse(connection, connection->request.uri);
                  }
               }

               //The requested resource is not available?
               if(error == ERROR_NOT_FOUND)
               {
                  //Default HTTP header fields
                  httpInitResponseHeader(connection);

                  //Invoke user-defined callback, if any
                  if(connection->settings->uriNotFoundCallback != NULL)
                  {
                     error = connection->settings->uriNotFoundCallback(connection,
                        connection->request.uri);
                  }
               }
            }
            
            TRACE_INFO("Sending Error: %d\r\n", error);
            //Check status code
            if(error)
            {
               //Default HTTP header fields
               httpInitResponseHeader(connection);

               //Bad request?
               if(error == ERROR_INVALID_REQUEST)
               {
                  //Send an error 400 and close the connection immediately
                  httpSendErrorResponse(connection, 400,
                     "The request is badly formed");
               }
               //Authorization required?
               else if(error == ERROR_AUTH_REQUIRED)
               {
                  //Send an error 401 and keep the connection alive
                  error = httpSendErrorResponse(connection, 401,
                     "Authorization required");
               }
               //Page not found?
               else if(error == ERROR_NOT_FOUND)
               {
                  //Send an error 404 and keep the connection alive
                  error = httpSendErrorResponse(connection, 404,
                     "The requested page could not be found");
               }
            }

            //Internal error?
            if(error)
            {
               //Close the connection immediately
               break;
            }

            //Check whether the connection is persistent or not
            if(!connection->request.keepAlive || !connection->response.keepAlive)
            {
               //Close the connection immediately
               break;
            }
         }
      }

      //Valid socket handle?
      if(connection->socket != NULL)
      {
         //Debug message
         TRACE_INFO("Graceful shutdown...\r\n");
         //Graceful shutdown
         socketShutdown(connection->socket, SOCKET_SD_BOTH);

         //Debug message
         TRACE_INFO("Closing socket...\r\n");
         //Close socket
         socketClose(connection->socket);
      }
      TRACE_INFO("CRASHES. NAH\r\n");
      //Ready to serve the next connection request...
      connection->running = FALSE;
      //Release semaphore
      osReleaseSemaphore(&connection->serverContext->semaphore);
      if(connection->endConnection == TRUE){
          TRACE_INFO("FROM HTTP SERVER. DISCONNECT\r\n");
          osSuspendAllTasks();
          os_m2m_wifi_disconnect();
          osResumeAllTasks();
          
      }
      
   }
}


/**
 * @brief Send HTTP response header
 * @param[in] connection Structure representing an HTTP connection
 * @return Error code
 **/

error_t httpWriteHeader(HttpConnection *connection)
{
   error_t error;

   //Format HTTP response header
   error = httpFormatResponseHeader(connection, connection->buffer);

   //Check status code
   if(!error)
   {
      //Debug message
      TRACE_DEBUG("HTTP response header:\r\n%s", connection->buffer);

      //Send HTTP response header to the client
      error = httpSend(connection, connection->buffer,
         strlen(connection->buffer), HTTP_FLAG_DELAY);
   }

   //Return status code
   return error;
}


/**
 * @brief Read data from client request
 * @param[in] connection Structure representing an HTTP connection
 * @param[out] data Buffer where to store the incoming data
 * @param[in] size Maximum number of bytes that can be received
 * @param[out] received Number of bytes that have been received
 * @param[in] flags Set of flags that influences the behavior of this function
 * @return Error code
 **/

error_t httpReadStream(HttpConnection *connection,
   void *data, size_t size, size_t *received, uint_t flags)
{
   error_t error;
   size_t n;

   //No data has been read yet
   *received = 0;

   //Chunked encoding transfer is used?
   if(connection->request.chunkedEncoding)
   {
      //Point to the output buffer
      char_t *p = data;

      //Read as much data as possible
      while(*received < size)
      {
         //End of HTTP request body?
         if(connection->request.lastChunk)
            return ERROR_END_OF_STREAM;

         //Acquire a new chunk when the current chunk
         //has been completely consumed
         if(connection->request.byteCount == 0)
         {
            //The size of each chunk is sent right before the chunk itself
            error = httpReadChunkSize(connection);
            //Failed to decode the chunk-size field?
            if(error)
               return error;

            //Any chunk whose size is zero terminates the data transfer
            if(!connection->request.byteCount)
            {
               //The user must be satisfied with data already on hand
               return (*received > 0) ? NO_ERROR : ERROR_END_OF_STREAM;
            }
         }

         //Limit the number of bytes to read at a time
         n = MIN(size - *received, connection->request.byteCount);

         //Read data
         error = httpReceive(connection, p, n, &n, flags);
         //Any error to report?
         if(error)
            return error;

         //Total number of data that have been read
         *received += n;
         //Number of bytes left to process in the current chunk
         connection->request.byteCount -= n;

         //The HTTP_FLAG_BREAK_CHAR flag causes the function to stop reading
         //data as soon as the specified break character is encountered
         if(flags & HTTP_FLAG_BREAK_CRLF)
         {
            //Check whether a break character has been received
            if(p[n - 1] == LSB(flags))
               break;
         }
         //The HTTP_FLAG_WAIT_ALL flag causes the function to return
         //only when the requested number of bytes have been read
         else if(!(flags & HTTP_FLAG_WAIT_ALL))
         {
            break;
         }

         //Advance data pointer
         p += n;
      }
   }
   //Default encoding?
   else
   {
      //Return immediately if the end of the request body has been reached
      if(!connection->request.byteCount)
         return ERROR_END_OF_STREAM;

      //Limit the number of bytes to read
      n = MIN(size, connection->request.byteCount);

      //Read data
      error = httpReceive(connection, data, n, received, flags);
      //Any error to report?
      if(error)
         return error;

      //Decrement the count of remaining bytes to read
      connection->request.byteCount -= *received;
   }

   //Successful read operation
   return NO_ERROR;
}


/**
 * @brief Write data to the client
 * @param[in] connection Structure representing an HTTP connection
 * @param[in] data Buffer containing the data to be transmitted
 * @param[in] length Number of bytes to be transmitted
 * @return Error code
 **/

error_t httpWriteStream(HttpConnection *connection,
   const void *data, size_t length)
{
   error_t error;
   uint_t n;

   //Use chunked encoding transfer?
   if(connection->response.chunkedEncoding)
   {
      //Any data to send?
      if(length > 0)
      {
         char_t s[8];

         //The chunk-size field is a string of hex digits
         //indicating the size of the chunk
         n = sprintf(s, "%X\r\n", length);

         //Send the chunk-size field
         error = httpSend(connection, s, n, HTTP_FLAG_DELAY);
         //Failed to send data?
         if(error)
            return error;

         //Send the chunk-data
         error = httpSend(connection, data, length, HTTP_FLAG_DELAY);
         //Failed to send data?
         if(error)
            return error;

         //Terminate the chunk-data by CRLF
         error = httpSend(connection, "\r\n", 2, HTTP_FLAG_DELAY);
      }
      else
      {
         //Any chunk whose size is zero may terminate the data
         //transfer and must be discarded
         error = NO_ERROR;
      }
   }
   //Default encoding?
   else
   {
      //The length of the body shall not exceed the value
      //specified in the Content-Length field
      length = MIN(length, connection->response.byteCount);

      //Send user data
      error = httpSend(connection, data, length, HTTP_FLAG_DELAY);

      //Decrement the count of remaining bytes to be transferred
      connection->response.byteCount -= length;
   }

   //Return status code
   return error;
}


/**
 * @brief Close output stream
 * @param[in] connection Structure representing an HTTP connection
 * @return Error code
 **/

error_t httpCloseStream(HttpConnection *connection)
{
   error_t error;

   //Use chunked encoding transfer?
   if(connection->response.chunkedEncoding)
   {
      //The chunked encoding is ended by any chunk whose size is zero
      error = httpSend(connection, "0\r\n\r\n", 5, HTTP_FLAG_NO_DELAY);
   }
   else
   {
      //Flush the send buffer
      error = httpSend(connection, "", 0, HTTP_FLAG_NO_DELAY);
   }

   //Return status code
   return error;
}

/**
 * @brief Send HTTP response
 * @param[in] connection Structure representing an HTTP connection
 * @param[in] uri NULL-terminated string containing the file to be sent in response
 * @return Error code
 **/

error_t httpSendResponse(HttpConnection *connection, const char_t *uri) {
    error_t error;
    size_t length;
    const uint8_t *data;

    //Retrieve the full pathname
    httpGetAbsolutePath(connection, uri, connection->buffer,
            HTTP_SERVER_BUFFER_SIZE);


    //Get the resource data associated with the URI
    error = resGetData(connection->buffer, &data, &length);
    //The specified URI cannot be found?
    if (error){
        return error;
    }

    //Format HTTP response header
    connection->response.statusCode = 200;
    connection->response.contentType = mimeGetType(uri);
    connection->response.chunkedEncoding = FALSE;
    connection->response.contentLength = length;

    //Send the header to the client
    error = httpWriteHeader(connection);
    //Any error to report?
    if (error) {
        //Return status code
        return error;
    }


    //Send response body
    error = httpWriteStream(connection, data, length);
    //Any error to report?
    if (error){
        return error;
    }

    //Properly close output stream
    error = httpCloseStream(connection);

    //Return status code
    return error;
}


/**
 * @brief Send error response to the client
 * @param[in] connection Structure representing an HTTP connection
 * @param[in] statusCode HTTP status code
 * @param[in] message User message
 * @return Error code
 **/

error_t httpSendErrorResponse(HttpConnection *connection,
   uint_t statusCode, const char_t *message)
{
   error_t error;
   size_t length;

   //HTML response template
   static const char_t template[] =
      "<!doctype html>\r\n"
      "<html>\r\n"
      "<head><title>Error %03d</title></head>\r\n"
      "<body>\r\n"
      "<h2>Error %03d</h2>\r\n"
      "<p>%s</p>\r\n"
      "</body>\r\n"
      "</html>\r\n";

   //Compute the length of the response
   length = strlen(template) + strlen(message) - 4;

   //Check whether the HTTP request has a body
   if(strcasecmp(connection->request.method, "GET") &&
      strcasecmp(connection->request.method, "HEAD") &&
      strcasecmp(connection->request.method, "DELETE"))
   {
      //Drop the HTTP request body and close the connection after sending
      //the HTTP response
      connection->response.keepAlive = FALSE;
   }

   //Format HTTP response header
   connection->response.statusCode = statusCode;
   connection->response.contentType = mimeGetType(".htm");
   connection->response.chunkedEncoding = FALSE;
   connection->response.contentLength = length;

   //Send the header to the client
   error = httpWriteHeader(connection);
   //Any error to report?
   if(error)
      return error;

   //Format HTML response
   sprintf(connection->buffer, template, statusCode, statusCode, message);

   //Send response body
   error = httpWriteStream(connection, connection->buffer, length);
   //Any error to report?
   if(error)
      return error;

   //Properly close output stream
   error = httpCloseStream(connection);
   //Return status code
   return error;
}


/**
 * @brief Send redirect response to the client
 * @param[in] connection Structure representing an HTTP connection
 * @param[in] statusCode HTTP status code (301 for permanent redirects)
 * @param[in] uri NULL-terminated string containing the redirect URI
 * @return Error code
 **/

error_t httpSendRedirectResponse(HttpConnection *connection,
   uint_t statusCode, const char_t *uri)
{
   error_t error;
   size_t length;

   //HTML response template
   static const char_t template[] =
      "<!doctype html>\r\n"
      "<html>\r\n"
      "<head><title>Moved</title></head>\r\n"
      "<body>\r\n"
      "<h2>Moved</h2>\r\n"
      "<p>This page has moved to <a href=\"%s\">%s</a>.</p>"
      "</body>\r\n"
      "</html>\r\n";

   //Compute the length of the response
   length = strlen(template) + 2 * strlen(uri) - 4;

   //Check whether the HTTP request has a body
   if(strcasecmp(connection->request.method, "GET") &&
      strcasecmp(connection->request.method, "HEAD") &&
      strcasecmp(connection->request.method, "DELETE"))
   {
      //Drop the HTTP request body and close the connection after sending
      //the HTTP response
      connection->response.keepAlive = FALSE;
   }

   //Format HTTP response header
   connection->response.statusCode = statusCode;
   connection->response.location = uri;
   connection->response.contentType = mimeGetType(".htm");
   connection->response.chunkedEncoding = FALSE;
   connection->response.contentLength = length;

   //Send the header to the client
   error = httpWriteHeader(connection);
   //Any error to report?
   if(error)
      return error;

   //Format HTML response
   sprintf(connection->buffer, template, uri, uri);

   //Send response body
   error = httpWriteStream(connection, connection->buffer, length);
   //Any error to report?
   if(error)
      return error;

   //Properly close output stream
   error = httpCloseStream(connection);
   //Return status code
   return error;
}


/**
 * @brief Check whether the client's handshake is valid
 * @param[in] connection Structure representing an HTTP connection
 * @return TRUE if the WebSocket handshake is valid, else FALSE
 **/

bool_t httpCheckWebSocketHandshake(HttpConnection *connection)
{
#if (HTTP_SERVER_WEB_SOCKET_SUPPORT == ENABLED)
   error_t error;
   size_t n;

   //The request must contain an Upgrade header field whose value
   //must include the "websocket" keyword
   if(!connection->request.upgradeWebSocket)
      return FALSE;

   //The request must contain a Connection header field whose value
   //must include the "Upgrade" token
   if(!connection->request.connectionUpgrade)
      return FALSE;

   //Retrieve the length of the client's key
   n = strlen(connection->request.clientKey);

   //The request must include a header field with the name Sec-WebSocket-Key
   if(n == 0)
      return FALSE;

   //The value of the Sec-WebSocket-Key header field must be a 16-byte
   //value that has been Base64-encoded
   error = base64Decode(connection->request.clientKey, n, connection->buffer, &n);
   //Decoding failed?
   if(error)
      return FALSE;

   //Check the length of the resulting value
   if(n != 16)
      return FALSE;

   //The client's handshake is valid
   return TRUE;
#else
   //WebSocket are not supported
   return FALSE;
#endif
}


/**
 * @brief Upgrade an existing HTTP connection to a WebSocket
 * @param[in] connection Structure representing an HTTP connection
 * @return Handle referencing the new WebSocket
 **/

WebSocket *httpUpgradeToWebSocket(HttpConnection *connection)
{
   WebSocket *webSocket;

#if (HTTP_SERVER_WEB_SOCKET_SUPPORT == ENABLED)
#if (HTTP_SERVER_TLS_SUPPORT == ENABLED)
   //Check whether a secure connection is being used
   if(connection->tlsContext != NULL)
   {
      //Upgrade the secure connection to a WebSocket
      webSocket = webSocketUpgradeSecureSocket(connection->socket,
         connection->tlsContext);
   }
   else
#endif
   {
      //Upgrade the connection to a WebSocket
      webSocket = webSocketUpgradeSocket(connection->socket);
   }

   //Succesful upgrade?
   if(webSocket != NULL)
   {
      error_t error;

      //Copy client's key
      error = webSocketSetClientKey(webSocket, connection->request.clientKey);

      //Check status code
      if(!error)
      {
#if (HTTP_SERVER_TLS_SUPPORT == ENABLED)
         //Detach the TLS context from the HTTP connection
         connection->tlsContext = NULL;
#endif
         //Detach the socket from the HTTP connection
         connection->socket = NULL;
      }
      else
      {
         //Clean up side effects
         webSocketClose(webSocket);
         webSocket = NULL;
      }
   }
#else
   //WebSockets are not supported
   webSocket = NULL;
#endif

   //Return a handle to the freshly created WebSocket
   return webSocket;
}


#endif
