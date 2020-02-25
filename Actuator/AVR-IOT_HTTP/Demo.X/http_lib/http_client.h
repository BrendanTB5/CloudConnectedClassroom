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

/**
 * \defgroup sam0_httpc_group HTTP client service
 *
 * This module provides implementation of HTTP client 1.1 for WINC1500 board.
 *
 * Detailed description of HTTP, please refer to the following documents.<br>
 * http://tools.ietf.org/html/rfc2616
 *
 * Revision history
 * 2014/10/07 : Initial draft. (v1.0.0)
 * 2014/12/17 : Add extension header and fix some issues. (v1.0.1)
 * 2015/01/07 : Optimize the WINC driver 18.0 (v1.0.2)
 * 2019/11/3  : Added support for the AVR-IOT: BRENDAN MULHOLLAND
 */

#ifndef HTTP_CLIENT_H
#define	HTTP_CLIENT_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "../mcc_generated_files/winc/socket/socket.h"
#include "../mcc_generated_files/winc/common/winc_defines.h"
#include "http_entity.h"
#include <stdint.h>


    // The protocol title that we will be using
#define HTTP_PROTO_NAME "HTTP/1.1"
#define MAX_PAYLOAD_SIZE 1000

/**
     * \brief A type of HTTP method.
     */
    enum http_method {
        /* Method type of GET. */
        HTTP_METHOD_GET = 1,
        /* Method type of POST. */
        HTTP_METHOD_POST,
        /* Method type of DELETE. */
        HTTP_METHOD_DELETE,
    };

    /**
     * \brief A type of HTTP client callback.
     */
    enum http_client_callback_type {
        /**
         * Socket was connected.
         * After received this event, try send request message to the server.
         */
        HTTP_CLIENT_CALLBACK_SOCK_CONNECTED,
        /** The request operation is completed. */
        HTTP_CLIENT_CALLBACK_REQUESTED,
        /** Received HTTP response message. */
        HTTP_CLIENT_CALLBACK_RECV_RESPONSE,
        /** Received Chunked data. */
        HTTP_CLIENT_CALLBACK_RECV_CHUNKED_DATA,
        /** The session was closed. */
        HTTP_CLIENT_CALLBACK_DISCONNECTED,
    };



	//KEEP THIS
	typedef struct http_connection
	{
		int8_t* socketStatus;
		int8_t* httpStatus;
		struct sockaddr_in* socketVars;
		int8_t timeout;

	}connection_t;


	enum http_Code
	{
		HTTP_OK = 200,
		HTTP_NOT_FOUND = 404,
		HTTP_ACCEPTED = 202,
		HTTP_NOT_MODIFIED = 304,
		HTTP_FOUND = 302,
		HTTP_IM_A_TEAPOT = 416
	};

    typedef  uint32_t (*callback_ptr_t)();

	typedef struct httpMessage{
		enum http_method outgoingMessageType;
		void* httpMessageOut;
		void* url;
		int8_t sizeofhttpMessageOut;
		char* returnMessageBuffer;
		int8_t* sizeOfReturn;
		enum http_Code response;
		int8_t* messageDecoded;
        callback_ptr_t returnFunc;


	}message_t;
    
    
    uint8_t http_client_communication(connection_t *connectionSettings,message_t *httpMessage);
    void initializeClient(void);

	

  
    

    
    
#define	EINVAL	1
#define	ENOENT	2
#define	NOPATH	3
#define	EMFILE	4
#define	EACCESS	5
#define	EBADF	6
#define	EMCBD	7
#define	ENOMEM	8
#define	EIMBA	9
#define	EINVENV	10
#define	ENOEXEC	11
#define	EPERM	12
#define	EDATA	13
#define	EDRIVE	15
#define	ECURDIR	16
#define	EXDEV	17
#define	ENFILE	18

#define ENOSPC  19
#define EIO     20
#define EDESTADDRREQ    21
#define ECONNRESET      22
#define EAGAIN  23
#define EBUSY   24
#define EADDRINUSE      25
#define EALREADY        26
#define ENOTCONN        27
#define ECONNREFUSED    28
#define EOVERFLOW       29
#define EBADMSG         30
#define EHOSTUNREACH    31
#define	ETIME   32
#define ENAMETOOLONG    33
#define ENOTSUP         34

#ifdef	__cplusplus
}
#endif

#endif	/* HTTP_CLIENT_H */

