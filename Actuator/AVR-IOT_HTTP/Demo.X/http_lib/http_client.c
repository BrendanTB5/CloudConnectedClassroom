/**
 * \file
 *
 * \brief HTTP client service.
 *
 * Copyright (c) 2016-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */

#include "http_client.h"
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include "../main.h"
#include "../mcc_generated_files/winc/socket/socket.h"

#define DEFAULT_USER_AGENT "atmel/1.0.2"



enum http_client_req_state {
	STATE_INIT = 0,
	STATE_TRY_SOCK_CONNECT,
	STATE_SOCK_CONNECTED,
	STATE_REQ_SEND_HEADER,
	STATE_REQ_SEND_ENTITY,
};

enum http_client_resp_state {
	STATE_PARSE_HEADER,
	STATE_PARSE_ENTITY,
};

int socket_connected = -1;
static connection_t* globalConnectionSettings;
static message_t* message;
static SOCKET tcp_client_socket = -1;
static char sendBuffer[MAX_PAYLOAD_SIZE];


static void readHTTPMessage()
{
    
    char rM[MAX_PAYLOAD_SIZE];
    memcpy(rM,message->returnMessageBuffer,MAX_PAYLOAD_SIZE);
    
	if(rM[0] == 'H' && rM[1] == 'T' && rM[2] == 'T' && rM[3] == 'P' && rM[4] == '/' && rM[5] == '1' && rM[6] == '.' && (rM[7] == '1' || rM[7] == '0')){
        int httpCode = ((rM[11]-0x30) + (10*(rM[10]-0x30)) + (100*(rM[9] -0x30)));
        message->response = httpCode;
        int endStatus;
        for(endStatus=12; endStatus < MAX_PAYLOAD_SIZE; endStatus++){
            if(rM[endStatus] == '\n'){
                break;
            }
        }
        int dataLength;
        if(rM[endStatus+18] == '\r'){
            dataLength = (rM[endStatus+17] - 0x30);
        }
        else if(rM[endStatus+19] == '\r'){
            dataLength = (10*(rM[endStatus+17] - 0x30))+(rM[endStatus+18] - 0x30);
        } 
        else if(rM[endStatus+20] == '\r'){
            dataLength = (100*(rM[endStatus+17] - 0x30))+(10*(rM[endStatus+18] - 0x30))+(rM[endStatus+19] - 0x30);
        }
        else{
            dataLength = (100*(rM[endStatus+17] - 0x30))+(100*(rM[endStatus+18] - 0x30))+(10*(rM[endStatus+19] - 0x30))+(rM[endStatus+20] - 0x30);
        }
        
        int i;
        for(i=endStatus+20;i < MAX_PAYLOAD_SIZE;i++){
            if(rM[i-1] == '\n' && rM[i-3] == '\n' && rM[i-2] == '\r' && rM[i-4] == '\r'){
                break;
            }
        }
        int j;
        for(j=0; j < MAX_PAYLOAD_SIZE;j++){
            if(message->returnMessageBuffer[j] == '\0'){
                break;
            }
            message->returnMessageBuffer[j] = '\0';
        }
        
        for(j=0; j < dataLength; j++){
            message->returnMessageBuffer[j] = rM[j+i];
        }
        *(message->sizeOfReturn) = dataLength;
        *(message->messageDecoded) = 1;
        
    }
    memset(rM,0,MAX_PAYLOAD_SIZE);
}


static void formatHTTPMessage(void)
{
	switch (message->outgoingMessageType) {
	case HTTP_METHOD_GET:
		sprintf(sendBuffer, "GET %s HTTP/1.1\r\nHost:192.168.12.1\r\n\r\n", (char*)message->url);
		break;
	case HTTP_METHOD_DELETE:
		sprintf(sendBuffer, "DELETE %s HTTP/1.1\r\nHost:192.168.12.1\r\n\r\n", (char*)message->url);
		break;
	case HTTP_METHOD_POST:
        sprintf(sendBuffer, "POST %s HTTP/1.1\r\nHost:192.168.12.1\r\nContent-Type:text/plain\r\nContent-Length:%d\r\nConnection:close\r\n\r\n%s\r\n", (char*)message->url,message->sizeofhttpMessageOut,(char*)message->httpMessageOut);
		break;
	default:
		break;
	}

}



/**
 * \brief Called by the socket. Should not
 * be interfaced. Private method.
 */
static void http_socket_cb(SOCKET sock, uint8_t u8Msg, void* pvMsg)
{
	switch (u8Msg) {
		/* Socket connected */
	case SOCKET_MSG_CONNECT:
	{
		tstrSocketConnectMsg* pstrConnect = (tstrSocketConnectMsg*)pvMsg;
		if (pstrConnect && pstrConnect->s8Error >= 0) {
			printf("socket_cb: connect success!\r\n");
			send(tcp_client_socket, sendBuffer, strlen(sendBuffer), 0);
            recv(tcp_client_socket, message->returnMessageBuffer, MAX_PAYLOAD_SIZE, 2000);
		}
		else {
			printf("socket_cb: connect error!\r\n");
			close(tcp_client_socket);
			tcp_client_socket = -1;
		}
	}
	break;

	/* Message send */
	case SOCKET_MSG_SEND:
	{
		printf("socket_cb: send success!\r\n");
	}
	break;

	/* Message receive */
	case SOCKET_MSG_RECV:
	{
		tstrSocketRecvMsg* pstrRecv = (tstrSocketRecvMsg*)pvMsg;
		if (pstrRecv && pstrRecv->s16BufferSize > 0) {
			//TODO: TIMEOUT NEEDS TO BE CHANGED. CAN'T HAVE 0 TIMEOUT
			recv(tcp_client_socket, message->returnMessageBuffer, MAX_PAYLOAD_SIZE, 2000);
			printf("socket_cb: recv success!\r\n");
			printf("TCP Client Test Complete!\r\n");
			close(tcp_client_socket);
			tcp_client_socket = -1;
			readHTTPMessage();
            message->returnFunc();
		}
		else {
			printf("socket_cb: recv error!\r\n");
			close(tcp_client_socket);
			tcp_client_socket = -1;
		}
	}

	break;

	default:
		break;
	}
}


/**
	 * \brief Initialize HTTP client service.
	 *
	 * \param[in]  connectionSettings         Module instance of HTTP client module.
	 * \param[in]  httpMessage			Struct containing all of the message protocols.
	 */
uint8_t http_client_communication(connection_t *connectionSettings,message_t *httpMessage)
{
	globalConnectionSettings = connectionSettings;
	message = httpMessage;

	struct sockaddr_in address;
	address.sin_addr.s_addr = connectionSettings->socketVars->sin_addr.s_addr;
	address.sin_port = connectionSettings->socketVars->sin_port;
	address.sin_family = connectionSettings->socketVars->sin_family;

	if(socket_connected == -1)
	{
        SOCKET test_sock = socket(AF_INET,SOCK_STREAM,0);
		if((tcp_client_socket = test_sock) < 0)
		{
			printf("main: failed to create TCP client socket error!\r\n");
			return -1;
			
		}
		else {
			/* Connect server */
			*(globalConnectionSettings->socketStatus) = connect(tcp_client_socket, (struct sockaddr*) & address, sizeof(struct sockaddr_in));

			if (*(globalConnectionSettings->socketStatus) < 0) {
				close(tcp_client_socket);
				tcp_client_socket = -1;
			}
			else
			{
				*(message->messageDecoded) = 0;
				formatHTTPMessage();
			}
		}
	}
    return 0;
}




/**
 * \brief Creates all the sockets needed to
 * correctly set up the HTTP Client.
 */
void initializeClient(void) {
	socketInit();
	registerSocketCallback(http_socket_cb, NULL);
}
 