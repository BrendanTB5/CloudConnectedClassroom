/**
 * @file main.c
 * @brief Main routine
 *
 * @section License
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 *
 * Copyright (C) 2010-2019 Oryx Embedded SARL. All rights reserved.
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
 * @author Oryx Embedded SARL (www.oryx-embedded.com) and Brendan Mulholland
 * @version 1.9.4
 * 
 * @section Usage
 * This is the main program for the Gateway. It should be turned on after turning on the
 * Controller/Pipeline in the cloud, and after the Nodes have been turned on. It is adapted
 * from the Demos provided by Oryx. If this tries to build using a prebuild step just remove 
 * those lines from the build process. This project has been run entirely in Linux, and thus I
 * have no garuntees on what will work or not. This project has Doxygen documentation provided,
 * with some of the documentation written by myself, and some written by Oryx. I hope this is
 * of some use in the future.
 * -Brendan Mulholland
 * 
 **/

//Dependencies
#include <stdlib.h>
#include <stdbool.h>
#include <p32xxxx.h>
#include <sys/attribs.h>
#include "pic32mz_ef_curiosity.h"
#include "core/net.h"
#include "drivers/mac/pic32mz_eth_driver.h"
#include "drivers/phy/lan8720_driver.h"
#include "drivers/wifi/wilc1000_driver.h"
#include "dhcp/dhcp_client.h"
#include "dhcp/dhcp_server.h"
#include "ipv6/slaac.h"
#include "ipv6/ndp_router_adv.h"
#include "http/http_server.h"
#include "http/mime.h"
#include "path.h"
#include "date_time.h"
#include "resource_manager.h"
#include "debug.h"
#include "wilc1000_config.h"
#include "rng/yarrow.h"
#include "nodeTypes.h"
#include <string.h>



//PIC32 configuration settings
#pragma config USERID = 0xFFFF
#pragma config FMIIEN = OFF
#pragma config FETHIO = ON
#pragma config PGL1WAY = OFF
#pragma config PMDL1WAY = OFF
#pragma config IOL1WAY = OFF
#pragma config FUSBIDIO = OFF
#pragma config FPLLIDIV = DIV_3
#pragma config FPLLRNG = RANGE_5_10_MHZ
#pragma config FPLLICLK = PLL_POSC
#pragma config FPLLMULT = MUL_50
#pragma config FPLLODIV = DIV_2
#pragma config UPLLFSEL = FREQ_24MHZ
#pragma config FNOSC = SPLL
#pragma config DMTINTV = WIN_127_128
#pragma config FSOSCEN = OFF
#pragma config IESO = OFF
#pragma config POSCMOD = EC
#pragma config OSCIOFNC = OFF
#pragma config FCKSM = CSECMD
#pragma config WDTPS = PS1048576
#pragma config WDTSPGM = STOP
#pragma config WINDIS= NORMAL
#pragma config FWDTEN = OFF
#pragma config FWDTWINSZ = WINSZ_25
#pragma config DMTCNT = DMT31
#pragma config FDMTEN = OFF
//#pragma config DEBUG = ON
#pragma config JTAGEN = OFF
#pragma config ICESEL = ICS_PGx2
#pragma config TRCEN = OFF
#pragma config BOOTISA = MIPS32
#pragma config FECCCON = OFF_UNLOCKED
#pragma config FSLEEP = OFF
#pragma config DBGPER = PG_ALL
#pragma config SMCLR = MCLR_NORM
#pragma config SOSCGAIN = GAIN_2X
#pragma config SOSCBOOST = ON
#pragma config POSCGAIN = GAIN_2X
#pragma config POSCBOOST = ON
#pragma config EJTAGBEN = NORMAL
#pragma config CP = OFF

//Ethernet interface configuration
#define APP_IF0_NAME "eth0"
#define APP_IF0_HOST_NAME "http-server-demo"
#define APP_IF0_USE_DEFAULT_MAC_ADDR ENABLED
#define APP_IF0_MAC_ADDR "00-AB-CD-EF-20-48"

#define APP_IF0_USE_DHCP_CLIENT ENABLED
#define APP_IF0_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IF0_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IF0_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IF0_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IF0_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_IF0_USE_SLAAC ENABLED
#define APP_IF0_IPV6_LINK_LOCAL_ADDR "fe80::2048:0"

//First Wi-Fi interface (STA mode) configuration
#define APP_IF1_NAME "wlan0"
#define APP_IF1_HOST_NAME "http-server-demo"
#define APP_IF1_MAC_ADDR "00-00-00-00-00-00"

#define APP_IF1_USE_DHCP_CLIENT ENABLED
#define APP_IF1_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IF1_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IF1_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IF1_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IF1_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_IF1_USE_SLAAC ENABLED
#define APP_IF1_IPV6_LINK_LOCAL_ADDR "fe80::2048:1"

//Second Wi-Fi interface (AP mode) configuration
#define APP_IF2_NAME "wlan1"
#define APP_IF2_HOST_NAME "http-server-demo"
#define APP_IF2_MAC_ADDR "00-00-00-00-00-00"

#define APP_IF2_USE_DHCP_SERVER ENABLED
#define APP_IF2_IPV4_HOST_ADDR "192.168.8.1"
#define APP_IF2_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IF2_IPV4_DEFAULT_GATEWAY "0.0.0.0"
#define APP_IF2_IPV4_PRIMARY_DNS "0.0.0.0"
#define APP_IF2_IPV4_SECONDARY_DNS "0.0.0.0"
#define APP_IF2_IPV4_ADDR_RANGE_MIN "192.168.8.10"
#define APP_IF2_IPV4_ADDR_RANGE_MAX "192.168.8.99"

#define APP_IF2_USE_ROUTER_ADV ENABLED
#define APP_IF2_IPV6_LINK_LOCAL_ADDR "fe80::2048:2"
#define APP_IF2_IPV6_PREFIX "fd00:1:2:3::"
#define APP_IF2_IPV6_PREFIX_LENGTH 64
#define APP_IF2_IPV6_GLOBAL_ADDR "fd00:1:2:3::2048:2"

/**
 * This is the endpoint for the MQTT broker. This should be provided to you by your MQTT service.
 **/
#define APP_SERVER_NAME "REDACTED"

//MQTT server port
//#define APP_SERVER_PORT 1883   //MQTT over TCP
//#define APP_SERVER_PORT 8883 //MQTT over TLS
#define APP_SERVER_PORT 8883 //MQTT over TLS (mutual authentication)
//#define APP_SERVER_PORT 8080 //MQTT over WebSocket
//#define APP_SERVER_PORT 8081 //MQTT over secure WebSocket

//URI (for MQTT over WebSocket only)
#define APP_SERVER_URI "/ws"

/**
 * This is the x509 certificate provided by the MQTT service. Each line of the cert should be delimited by double quotes(""), including the Begin and End Certificate lines.
 **/
const char_t clientCert[] =
        "-----BEGIN CERTIFICATE-----"
        "-----END CERTIFICATE-----";

/**
 * This is the private key provided by the MQTT service. Each line of the cert should be delimited by double quotes(""), including the Begin and End Certificate lines.
 **/
const char_t clientKey[] =
        "-----BEGIN RSA PRIVATE KEY-----"
        "-----END RSA PRIVATE KEY-----";


/**
 * These are the CAs that the MQTT service uses. You can have multiple in here. Each line of the cert should be delimited by double quotes(""), including the Begin and End Certificate lines.
 **/
const char_t trustedCaList[] =
        "-----BEGIN CERTIFICATE-----"
        "MIIDQTCCAimgAwIBAgITBmyfz5m/jAo54vB4ikPmljZbyjANBgkqhkiG9w0BAQsF"
        "ADA5MQswCQYDVQQGEwJVUzEPMA0GA1UEChMGQW1hem9uMRkwFwYDVQQDExBBbWF6"
        "b24gUm9vdCBDQSAxMB4XDTE1MDUyNjAwMDAwMFoXDTM4MDExNzAwMDAwMFowOTEL"
        "MAkGA1UEBhMCVVMxDzANBgNVBAoTBkFtYXpvbjEZMBcGA1UEAxMQQW1hem9uIFJv"
        "b3QgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALJ4gHHKeNXj"
        "ca9HgFB0fW7Y14h29Jlo91ghYPl0hAEvrAIthtOgQ3pOsqTQNroBvo3bSMgHFzZM"
        "9O6II8c+6zf1tRn4SWiw3te5djgdYZ6k/oI2peVKVuRF4fn9tBb6dNqcmzU5L/qw"
        "IFAGbHrQgLKm+a/sRxmPUDgH3KKHOVj4utWp+UhnMJbulHheb4mjUcAwhmahRWa6"
        "VOujw5H5SNz/0egwLX0tdHA114gk957EWW67c4cX8jJGKLhD+rcdqsq08p8kDi1L"
        "93FcXmn/6pUCyziKrlA4b9v7LWIbxcceVOF34GfID5yHI9Y/QCB/IIDEgEw+OyQm"
        "jgSubJrIqg0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMC"
        "AYYwHQYDVR0OBBYEFIQYzIU07LwMlJQuCFmcx7IQTgoIMA0GCSqGSIb3DQEBCwUA"
        "A4IBAQCY8jdaQZChGsV2USggNiMOruYou6r4lK5IpDB/G/wkjUu0yKGX9rbxenDI"
        "U5PMCCjjmCXPI6T53iHTfIUJrU6adTrCC2qJeHZERxhlbI1Bjjt/msv0tadQ1wUs"
        "N+gDS63pYaACbvXy8MWy7Vu33PqUXHeeE6V/Uq2V8viTO96LXFvKWlJbYK8U90vv"
        "o/ufQJVtMVT8QtPHRh8jrdkPSHCa2XV4cdFyQzR1bldZwgJcJmApzyMZFo6IQ6XU"
        "5MsI+yMRQ+hDKXJioaldXgjUkK642M4UwtBV8ob2xJNDd2ZhwLnoQdeXeGADbkpy"
        "rqXRfboQnoZsG4q5WTP468SQvvG5"
        "-----END CERTIFICATE-----"
        "-----BEGIN CERTIFICATE-----"
        "MIIEkjCCA3qgAwIBAgITBn+USionzfP6wq4rAfkI7rnExjANBgkqhkiG9w0BAQsF"
        "ADCBmDELMAkGA1UEBhMCVVMxEDAOBgNVBAgTB0FyaXpvbmExEzARBgNVBAcTClNj"
        "b3R0c2RhbGUxJTAjBgNVBAoTHFN0YXJmaWVsZCBUZWNobm9sb2dpZXMsIEluYy4x"
        "OzA5BgNVBAMTMlN0YXJmaWVsZCBTZXJ2aWNlcyBSb290IENlcnRpZmljYXRlIEF1"
        "dGhvcml0eSAtIEcyMB4XDTE1MDUyNTEyMDAwMFoXDTM3MTIzMTAxMDAwMFowOTEL"
        "MAkGA1UEBhMCVVMxDzANBgNVBAoTBkFtYXpvbjEZMBcGA1UEAxMQQW1hem9uIFJv"
        "b3QgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALJ4gHHKeNXj"
        "ca9HgFB0fW7Y14h29Jlo91ghYPl0hAEvrAIthtOgQ3pOsqTQNroBvo3bSMgHFzZM"
        "9O6II8c+6zf1tRn4SWiw3te5djgdYZ6k/oI2peVKVuRF4fn9tBb6dNqcmzU5L/qw"
        "IFAGbHrQgLKm+a/sRxmPUDgH3KKHOVj4utWp+UhnMJbulHheb4mjUcAwhmahRWa6"
        "VOujw5H5SNz/0egwLX0tdHA114gk957EWW67c4cX8jJGKLhD+rcdqsq08p8kDi1L"
        "93FcXmn/6pUCyziKrlA4b9v7LWIbxcceVOF34GfID5yHI9Y/QCB/IIDEgEw+OyQm"
        "jgSubJrIqg0CAwEAAaOCATEwggEtMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/"
        "BAQDAgGGMB0GA1UdDgQWBBSEGMyFNOy8DJSULghZnMeyEE4KCDAfBgNVHSMEGDAW"
        "gBScXwDfqgHXMCs4iKK4bUqc8hGRgzB4BggrBgEFBQcBAQRsMGowLgYIKwYBBQUH"
        "MAGGImh0dHA6Ly9vY3NwLnJvb3RnMi5hbWF6b250cnVzdC5jb20wOAYIKwYBBQUH"
        "MAKGLGh0dHA6Ly9jcnQucm9vdGcyLmFtYXpvbnRydXN0LmNvbS9yb290ZzIuY2Vy"
        "MD0GA1UdHwQ2MDQwMqAwoC6GLGh0dHA6Ly9jcmwucm9vdGcyLmFtYXpvbnRydXN0"
        "LmNvbS9yb290ZzIuY3JsMBEGA1UdIAQKMAgwBgYEVR0gADANBgkqhkiG9w0BAQsF"
        "AAOCAQEAYjdCXLwQtT6LLOkMm2xF4gcAevnFWAu5CIw+7bMlPLVvUOTNNWqnkzSW"
        "MiGpSESrnO09tKpzbeR/FoCJbM8oAxiDR3mjEH4wW6w7sGDgd9QIpuEdfF7Au/ma"
        "eyKdpwAJfqxGF4PcnCZXmTA5YpaP7dreqsXMGz7KQ2hsVxa81Q4gLv7/wmpdLqBK"
        "bRRYh5TmOTFffHPLkIhqhBGWJ6bt2YFGpn6jcgAKUj6DiAdjd4lpFw85hdKrCEVN"
        "0FE6/V1dN2RMfjCyVSRCnTawXZwXgWHxyvkQAiSr6w10kY17RSlQOYiypok1JR4U"
        "akcjMS9cmvqtmg5iUaQqqcT5NJ0hGA=="
        "-----END CERTIFICATE-----"
        "-----BEGIN CERTIFICATE-----"
        "MIIE0zCCA7ugAwIBAgIQGNrRniZ96LtKIVjNzGs7SjANBgkqhkiG9w0BAQUFADCB"
        "yjELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL"
        "ExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwNiBWZXJp"
        "U2lnbiwgSW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxW"
        "ZXJpU2lnbiBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0"
        "aG9yaXR5IC0gRzUwHhcNMDYxMTA4MDAwMDAwWhcNMzYwNzE2MjM1OTU5WjCByjEL"
        "MAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZW"
        "ZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwNiBWZXJpU2ln"
        "biwgSW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxWZXJp"
        "U2lnbiBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0aG9y"
        "aXR5IC0gRzUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvJAgIKXo1"
        "nmAMqudLO07cfLw8RRy7K+D+KQL5VwijZIUVJ/XxrcgxiV0i6CqqpkKzj/i5Vbex"
        "t0uz/o9+B1fs70PbZmIVYc9gDaTY3vjgw2IIPVQT60nKWVSFJuUrjxuf6/WhkcIz"
        "SdhDY2pSS9KP6HBRTdGJaXvHcPaz3BJ023tdS1bTlr8Vd6Gw9KIl8q8ckmcY5fQG"
        "BO+QueQA5N06tRn/Arr0PO7gi+s3i+z016zy9vA9r911kTMZHRxAy3QkGSGT2RT+"
        "rCpSx4/VBEnkjWNHiDxpg8v+R70rfk/Fla4OndTRQ8Bnc+MUCH7lP59zuDMKz10/"
        "NIeWiu5T6CUVAgMBAAGjgbIwga8wDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8E"
        "BAMCAQYwbQYIKwYBBQUHAQwEYTBfoV2gWzBZMFcwVRYJaW1hZ2UvZ2lmMCEwHzAH"
        "BgUrDgMCGgQUj+XTGoasjY5rw8+AatRIGCx7GS4wJRYjaHR0cDovL2xvZ28udmVy"
        "aXNpZ24uY29tL3ZzbG9nby5naWYwHQYDVR0OBBYEFH/TZafC3ey78DAJ80M5+gKv"
        "MzEzMA0GCSqGSIb3DQEBBQUAA4IBAQCTJEowX2LP2BqYLz3q3JktvXf2pXkiOOzE"
        "p6B4Eq1iDkVwZMXnl2YtmAl+X6/WzChl8gGqCBpH3vn5fJJaCGkgDdk+bW48DW7Y"
        "5gaRQBi5+MHt39tBquCWIMnNZBU4gcmU7qKEKQsTb47bDN0lAtukixlE0kF6BWlK"
        "WE9gyn6CagsCqiUXObXbf+eEZSqVir2G3l6BFoMtEMze/aiCKm0oHw0LxOXnGiYZ"
        "4fQRbxC1lfznQgUy286dUV4otp6F01vvpX1FQHKOtw5rDgb7MzVIcbidJ4vEZV8N"
        "hnacRHr2lVz2XTIIM6RUthg/aFzyQkqFOFSDX9HoLPKsEdao7WNq"
        "-----END CERTIFICATE-----";


//Application configuration
#define APP_HTTP_MAX_CONNECTIONS 4

//Global variables
DhcpClientSettings dhcpClientSettings;
DhcpClientContext dhcpClientContext0;
DhcpClientContext dhcpClientContext1;
DhcpServerSettings dhcpServerSettings;
DhcpServerContext dhcpServerContext;
SlaacSettings slaacSettings;
SlaacContext slaacContext0;
SlaacContext slaacContext1;
NdpRouterAdvSettings ndpRouterAdvSettings;
NdpRouterAdvPrefixInfo ndpRouterAdvPrefixInfo[1];
NdpRouterAdvContext ndpRouterAdvContext;
HttpServerSettings httpServerSettings;
HttpServerContext httpServerContext;
HttpConnection httpConnections[APP_HTTP_MAX_CONNECTIONS];
MqttClientContext mqttClientContext;
YarrowContext yarrowContext;
uint8_t seed[32];
MacAddr ethMac;
char ethMacString[20];
int8_t gatewayID;
bool initConfig;
char gatewayChannel[16];
char gatewayRequest[32];
char gatewayNodes[32];
char gatewaytxNum[32];
char gatewayTimer[32];
char gatewayFinish[32];
uint8_t initializedValues = 0;
bool neverReturn;

dev_t devList[32];
char currentDevice;

bool startWindow;
bool httpInitialized;

bool nodeFailed;
char failedDevice;

bool gatewayFinished;





//Forward declaration of functions
error_t ethInterfaceInit(void);
error_t HandleAPSwitch(void);
error_t wifiStaInterfaceInit(void);
error_t wifiApInterfaceInit(void);

error_t httpServerCgiCallback(HttpConnection *connection,
        const char_t *param);

error_t httpServerRequestCallback(HttpConnection *connection,
        const char_t *uri);

error_t httpServerUriNotFoundCallback(HttpConnection *connection,
        const char_t *uri);

error_t configureNodes(uint8_t devNum);
error_t wifiInit(void);

//External 1 interrupt service routine
void __ISR(_EXTERNAL_1_VECTOR, IPL1AUTO) ext1IrqWrapper(void);
//Ethernet interrupt service routine
void __ISR(_ETHERNET_VECTOR, IPL1AUTO) ethIrqWrapper(void);


void __attribute__((noreturn)) SoftReset(void);

/**
 * @brief System initialization
 **/

void systemInit(void) {
    //Execute system unlock sequence
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;

    //Check PBDIVRDY bit
    while (!(PB2DIV & _PB2DIV_PBDIVRDY_MASK));
    //Configure PBCLK2 clock divisor (SYSCLK / 5);
    PB2DIV = _PB2DIV_ON_MASK | 4;

    //Check PBDIVRDY bit
    while (!(PB3DIV & _PB3DIV_PBDIVRDY_MASK));
    //Configure PBCLK3 clock divisor (SYSCLK / 5);
    PB3DIV = _PB3DIV_ON_MASK | 4;

    //Check PBDIVRDY bit
    while (!(PB4DIV & _PB4DIV_PBDIVRDY_MASK));
    //Configure PBCLK4 clock divisor (SYSCLK / 1);
    PB4DIV = _PB4DIV_ON_MASK | 0;

    //Check PBDIVRDY bit
    while (!(PB5DIV & _PB5DIV_PBDIVRDY_MASK));
    //Configure PBCLK5 clock divisor (SYSCLK / 2);
    PB5DIV = _PB5DIV_ON_MASK | 1;

    //Relock the SYSKEY
    SYSKEY = 0;

    //Disable interrupts
    __builtin_disable_interrupts();

    //Set IV
    _CP0_BIS_CAUSE(_CP0_CAUSE_IV_MASK);
    //Enable multi-vectored mode
    INTCONSET = _INTCON_MVEC_MASK;
}

/**
 * @brief I/O initialization
 **/

void ioInit(void) {
    //Configure LED1 (RE3), LED2 (RE4) and LED3 (RE6)
    TRISECLR = LED1_MASK | LED2_MASK | LED3_MASK;
    //Clear LEDs
    LATECLR = LED1_MASK | LED2_MASK | LED3_MASK;
    //Disable analog pads
    ANSELECLR = LED1_MASK | LED2_MASK | LED3_MASK;

    //Configure LED4_R (RB5), LED4_G (RB1) and LED4_B (RB0)
    TRISBCLR = LED4_R_MASK | LED4_G_MASK | LED4_B_MASK;
    //Clear LEDs
    LATBSET = LED4_R_MASK | LED4_G_MASK | LED4_B_MASK;
    //Disable analog pads
    ANSELBCLR = LED4_R_MASK | LED4_G_MASK | LED4_B_MASK;

    //Configure SW1 (RG12)
    TRISGSET = SW1_MASK;
    //Enable pull-up
    CNPUGSET = SW1_MASK;
    //Disable analog pads
    ANSELGCLR = SW1_MASK;
}

/**
 * @brief Random data generation callback function
 * @param[out] data Buffer where to store the random data
 * @param[in] length Number of bytes that are required
 * @return Error code
 **/

error_t webSocketRngCallback(uint8_t *data, size_t length) {
    //Generate some random data
    return yarrowRead(&yarrowContext, data, length);
}

/**
 * @brief TLS initialization callback
 * @param[in] context Pointer to the MQTT client context
 * @param[in] tlsContext Pointer to the TLS context
 * @return Error code
 **/

error_t mqttTestTlsInitCallback(MqttClientContext *context,
        TlsContext *tlsContext) {
    error_t error;

    //Debug message
    TRACE_INFO("MQTT: TLS initialization callback\r\n");

    //Set the PRNG algorithm to be used
    error = tlsSetPrng(tlsContext, YARROW_PRNG_ALGO, &yarrowContext);
    //Any error to report?
    if (error)
        return error;

    //Set the fully qualified domain name of the server
    error = tlsSetServerName(tlsContext, APP_SERVER_NAME);
    //Any error to report?
    if (error)
        return error;

#if (APP_SERVER_PORT == 8883)
    //Import client's certificate
    error = tlsAddCertificate(tlsContext, clientCert, strlen(clientCert),
            clientKey, strlen(clientKey));
    //Any error to report?
    if (error)
        return error;
#endif

    //Import trusted CA certificates
    error = tlsSetTrustedCaList(tlsContext, trustedCaList, strlen(trustedCaList));
    //Any error to report?
    if (error)
        return error;

    //Successful processing
    return NO_ERROR;
}

/**
 * @brief Publish callback function
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Topic name
 * @param[in] message Message payload
 * @param[in] length Length of the message payload
 * @param[in] dup Duplicate delivery of the PUBLISH packet
 * @param[in] qos QoS level used to publish the message
 * @param[in] retain This flag specifies if the message is to be retained
 * @param[in] packetId Packet identifier
 **/

void mqttTestPublishCallback(MqttClientContext *context,
        const char_t *topic, const uint8_t *message, size_t length,
        bool_t dup, MqttQosLevel qos, bool_t retain, uint16_t packetId) {
    //Debug message
    TRACE_INFO("PUBLISH packet received...\r\n");
    TRACE_INFO("  Dup: %u\r\n", dup);
    TRACE_INFO("  QoS: %u\r\n", qos);
    TRACE_INFO("  Retain: %u\r\n", retain);
    TRACE_INFO("  Packet Identifier: %u\r\n", packetId);
    TRACE_INFO("  Topic: %s\r\n", topic);
    TRACE_INFO("  Message (%" PRIuSIZE " bytes):\r\n", length);
    TRACE_INFO_ARRAY("    ", message, length);


    //Check topic name
    if (!strcmp(topic, "board/leds/1")) {
        if (length == 6 && !strncasecmp((char_t *) message, "toggle", 6)) {
            //Toggle user LED
            if (LATE & LED2_MASK)
                LATECLR = LED2_MASK;
            else
                LATESET = LED2_MASK;
        } else if (length == 2 && !strncasecmp((char_t *) message, "on", 2)) {
            //Set user LED
            LATESET = LED2_MASK;
        } else {
            //Clear user LED
            LATECLR = LED2_MASK;
        }
    } else if (!strcmp(topic, "board/leds/2")) {
        if (length == 6 && !strncasecmp((char_t *) message, "toggle", 6)) {
            //Toggle user LED
            if (LATE & LED3_MASK)
                LATECLR = LED3_MASK;
            else
                LATESET = LED3_MASK;
        } else if (length == 2 && !strncasecmp((char_t *) message, "on", 2)) {
            //Set user LED
            LATESET = LED3_MASK;
        } else {
            //Clear user LED
            LATECLR = LED3_MASK;
        }
    } else if (!strcmp(topic, "gateway/configs")) {
        char * token;

        char messP[256];
        strcpy(messP, message);
        /*if (msgLength == 1024) {
                char * p = messP + 1024;
         *p = '\0';
        }*/
        token = strtok(messP, ",");
        if (!strcmp(token, ethMacString)) {
            TRACE_INFO("Received Config for This Gateway");
            TRACE_INFO("This ETH is: %s\r\n", token);
            token = strtok(NULL, ",");

            TRACE_INFO("ID is: %s\r\n", token);
            gatewayID = atoi(token);
            sprintf(gatewayChannel, "gateway/%d/", gatewayID);
            TRACE_INFO("This Gateway's ID is %d\r\n", gatewayID);
            TRACE_INFO("This Gateway will use channel %s\r\n Unsub for configs.\r\n", gatewayChannel);
        } else {
            TRACE_INFO("Received Config for Wrong Device.\r\n Our MAC: %s \r\n Recieved MAC: %s", ethMacString, token);
        }

    } else if (!strcmp(topic, gatewayNodes)) {
        //All Comments are for when I implement dynamic addition and subtraction of devices
        char * token;
        char messP[256];
        strncpy(messP, message, length);
        /*if (msgLength == 1024) {
                char * p = messP + 1024;
                messP + 1023 = '\0';
        }*/
        token = strtok(messP, ",");
        char currType = '\0';
        char types[32];
        uint16_t IDs[32];

        char i;

        //int8_t uncertainIDs[32];
        //uint8_t startA;
        for (i = 0; i < 32; i++) {
            types[i] = '\0';
            IDs[i] = -1;
            //uncertainIDs[i] = -1;
        }
        TRACE_INFO("Received Node List\r\n");
        i = 0;

        //Go through and break apart the list
        while (token != NULL) {
            if (!strcmp(token, "S")) {
                currType = 'S';
                TRACE_INFO("Node List Reached Marker S\r\n");
            } else if (!strcmp(token, "A")) {
                currType = 'A';
                TRACE_INFO("Node List Reached Marker A\r\n");
                //startA = i;
            } else {
                uint16_t id = atoi(token);
                TRACE_INFO("The ID Received is: %d\r\n", id);
                if (id != 0) {
                    types[i] = currType;
                    IDs[i] = id;
                    i++;
                }

            }
            token = strtok(NULL, ",");
        }
        for (i = 0; i < 32; i++) {
            if (devList[i].node == NULL) {
                devList[i].valid = false;
                if (types[i] == 'S' || types[i] == 'A') {
                    devList[i].type = types[i];
                    devList[i].ID = IDs[i];
                    devList[i].valid = true;
                    TRACE_INFO("NODE %d: TYPE= %c ID= %d\r\n", i, devList[i].type, devList[i].ID);

                }
            }/* else {
			//	if (devList[i].type == types[i] && devList[i].ID == IDs[i]) {
			//		devList[i].valid = true;
			//	} else {
					
			//	}
			 }*/

        }
        currentDevice = 0;
        TRACE_INFO("Unsub from nodes.\r\n", gatewayChannel);
        //mqttClientUnsubscribe(&mqttClientContext, "gateway/nodes", NULL);


    } else if (!strcmp(topic, gatewayTimer)) {
        currentDevice = 0;
        numTimesAttempted = 0;
        wilc1000Connect();
    } else if (!strncmp(topic, "sensor", 6) || !strncmp(topic, "act", 3)) {
        char * token;
        //Standard pre-token config
        uint16_t topicLength;
        char topicP[256];
        strcpy(topicP, topic);
        char devType;
        uint16_t ID;
        uint8_t devNumber;
        uint8_t i;

        char messP[256];
        strncpy(messP, message, length);
        messP[length + 1] = '\0';


        if (topic[0] == 's') {
            devType = 'S';
        } else {
            devType = 'A';
        }

        token = strtok(topicP, "/");
        TRACE_INFO("A %s.\r\n", token);
        token = strtok(NULL, "/");
        TRACE_INFO("B %s.\r\n", token);
        ID = atoi(token);
        token = strtok(NULL, "/");


        for (i = 0; i < 32; i++) {
            if (devList[i].ID == ID && devList[i].type == devType) {
                devNumber = i;
                break;
            }
        }

        if (!strncmp(token, "SSID", 4)) {
            TRACE_INFO("Received SSID For %c #%d.\r\n", devType, devNumber);
            TRACE_INFO("SSID MSG: %s \r\n", messP);
            for (i = 0; i < 32; i++) {
                devList[devNumber].node->SSID[i] = '\0';
            }
            strncpy(devList[devNumber].node->SSID, messP, length);
            //devList[devNumber].node->SSID = devSSID;
            TRACE_INFO("SSID: %s\r\n", devList[devNumber].node->SSID);
            initializedValues++;
            TRACE_INFO("Initialized Values = %d.\r\n", initializedValues);

        } else if (!strncmp(token, "pass", 4)) {
            TRACE_INFO("Received Pass For %c #%d.\r\n", devType, devNumber);
            TRACE_INFO("Pass MSG: %s", messP);
            for (i = 0; i < 32; i++) {
                devList[devNumber].node->Password[i] = '\0';
            }
            strncat(devList[devNumber].node->Password, messP, length);
            //devList[devNumber].node->Password = devPass;
            initializedValues++;
            TRACE_INFO("Initialized Values = %d.\r\n", initializedValues);

        } else if (!strncmp(token, "return", 6)) {
            TRACE_INFO("Received MSG For %c #%d.\r\n", devType, devNumber);
            TRACE_INFO("MSG: %s\r\n", messP);
            if (strcmp(message, devList[devNumber].node->hBuff) != 0) {
                int j;
                for (j = 0; j < strlen(devList[devNumber].node->hBuff); j++) {
                    devList[devNumber].node->hBuff[j] = '\0';
                }
                strncpy(devList[devNumber].node->hBuff, messP, length);
                devList[devNumber].node->hBuffValid = true;
                TRACE_INFO("Done Adding the Return\r\n", devType, devNumber);
            } else {
                devList[devNumber].node->hBuffValid = true;
                TRACE_INFO("Return True\r\n", devType, devNumber);
            }
        }


    }
}


/**
 * @brief Configures the nodes for the software to fetch configuration information from
 * @param[in] devNum The device number to place in the global device array
 * @return Error code
 **/

error_t configureNodes(uint8_t devNum) {
    error_t error;

    TRACE_INFO("Fun in here.\r\n", gatewayChannel);

    if (!devList[devNum].valid) {
        initializedValues += 2;
        return NO_ERROR;
    }
    NODE *p = osAllocMem(sizeof (NODE));
    devList[devNum].node = p;
    p->mBuffValid = false;
    p->hBuffValid = false;
    p->hBuff[0] = '\0';
    p->mBuff[0] = '\0';

    if (devList[devNum].type == 'S') {
        char channelName1[32];
        char channelName2[32];
        char channelName3[32];
        char channelName4[32];
        sprintf(channelName1, "sensor/%d/SSID", devList[devNum].ID);
        sprintf(channelName2, "sensor/%d/pass", devList[devNum].ID);
        sprintf(channelName3, "sensor/%d/return", devList[devNum].ID);
        sprintf(channelName4, "sensor/%d/request", devList[devNum].ID);
        error = mqttClientSubscribe(&mqttClientContext, channelName1, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientSubscribe(&mqttClientContext, channelName2, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientSubscribe(&mqttClientContext, channelName3, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientPublish(&mqttClientContext, channelName4, "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
    } else if (devList[devNum].type == 'A') {
        char channelName1[32];
        char channelName2[32];
        char channelName3[32];
        char channelName4[32];
        sprintf(channelName1, "act/%d/SSID", devList[devNum].ID);
        sprintf(channelName2, "act/%d/pass", devList[devNum].ID);
        sprintf(channelName3, "act/%d/return", devList[devNum].ID);
        sprintf(channelName4, "act/%d/request", devList[devNum].ID);
        error = mqttClientSubscribe(&mqttClientContext, channelName1, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientSubscribe(&mqttClientContext, channelName2, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientSubscribe(&mqttClientContext, channelName3, MQTT_QOS_LEVEL_1, NULL);
        error = mqttClientPublish(&mqttClientContext, channelName4, "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
    } else {
        return NO_ERROR;
    }

    TRACE_INFO("Added A Node.\r\n", gatewayChannel);
    return error;




}

/**
 * @brief Establish MQTT connection
 **/

error_t mqttTestConnect(void) {
    error_t error;
    IpAddr ipAddr;

    //Debug message
    TRACE_INFO("\r\n\r\nResolving server name...\r\n");

    //Resolve MQTT server name
    error = getHostByName(NULL, APP_SERVER_NAME, &ipAddr, 0);
    //Any error to report?
    if (error)
        return error;



    //Set the MQTT version to be used
    mqttClientSetVersion(&mqttClientContext, MQTT_VERSION_3_1_1);


    //MQTT over TLS
    mqttClientSetTransportProtocol(&mqttClientContext, MQTT_TRANSPORT_PROTOCOL_TLS);
    //Register TLS initialization callback
    mqttClientRegisterTlsInitCallback(&mqttClientContext, mqttTestTlsInitCallback);

    //Register publish callback function
    mqttClientRegisterPublishCallback(&mqttClientContext, mqttTestPublishCallback);

    //Set communication timeout
    mqttClientSetTimeout(&mqttClientContext, 20000);
    //Set keep-alive value
    mqttClientSetKeepAlive(&mqttClientContext, 3600);

    /**
    * Sets the client ID. Make sure to set to a registered Device Name.
    **/
    mqttClientSetIdentifier(&mqttClientContext, "Device_t");

    //Set user name and password
    //mqttClientSetAuthInfo(&mqttClientContext, "username", "password");

    error = netGetMacAddr(&netInterface[0], &ethMac);
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to get eth MAC Address!\r\n");
    }
    macAddrToString(&ethMac, ethMacString);

    char lwtChannel[48];

    sprintf(lwtChannel, "gateway/status/%s", ethMacString);


    //Set Will message
    mqttClientSetWillMessage(&mqttClientContext, lwtChannel,
            "0", 1, MQTT_QOS_LEVEL_0, FALSE);



    //Debug message
    TRACE_INFO("Connecting to MQTT server %s...\r\n", ipAddrToString(&ipAddr, NULL));

    //Start of exception handling block
    do {
        //Establish connection with the MQTT server
        error = mqttClientConnect(&mqttClientContext,
                &ipAddr, APP_SERVER_PORT, TRUE);
        //Any error to report?
        if (error)
            break;

        //Subscribe to the desired topics
        error = mqttClientSubscribe(&mqttClientContext,
                "board/leds/+", MQTT_QOS_LEVEL_1, NULL);
        //Any error to report?
        if (error)
            break;

        //Send PUBLISH packet
        error = mqttClientPublish(&mqttClientContext, lwtChannel,
                "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
        //Any error to report?
        if (error)
            break;

        //End of exception handling block
    } while (0);

    //Check status code
    if (error) {
        TRACE_ERROR("WE HAVE RETURNED WITH AN ERROR: %d\r\n", error);
        //Close connection
        mqttClientClose(&mqttClientContext);
        return NO_ERROR;
    }

    //Return status code
    return error;
}

/**
 * @brief The main block of the Program. Calls all the relevant sections at the correct time.
 **/

void mqttTestTask(void *param) {
    error_t error;
    bool_t connectionState;
    uint_t buttonState;
    uint_t prevButtonState;
    char_t buffer[16];

    //Initialize variables
    connectionState = FALSE;
    prevButtonState = 0;

    //Initialize MQTT client context
    mqttClientInit(&mqttClientContext);

    //Endless loop
    while (1) {
        //Check connection state
        if (!connectionState) {
            //Make sure the link is up
            if (netGetLinkState(&netInterface[0])) {
                //Try to connect to the MQTT server
                error = mqttTestConnect();

                //Successful connection?
                if (!error) {
                    //The MQTT client is connected to the server
                    connectionState = TRUE;
                    gatewayID = -1;
                    initConfig = true;
                    currentDevice = -1;
                    neverReturn = false;
                    //Here we send the initial subscriptions and publishes as defined in the Communication Docuement
                    mqttClientSubscribe(&mqttClientContext, "gateway/configs", MQTT_QOS_LEVEL_1, NULL);
                    //Next we publish to the gateway register channel
                    //Send PUBLISH packet
                    error = mqttClientPublish(&mqttClientContext, "gateway/register", ethMacString, strlen(ethMacString), MQTT_QOS_LEVEL_1, FALSE, NULL);



                } else {
                    //Delay between subsequent connection attempts
                    osDelayTask(2000);
                    TRACE_INFO("\r\n NEW CONNECTION ATTEMPT \r\n");
                }
            }
        } else {
            //Initialize status code
            error = NO_ERROR;

            //Get SW1 button state
            buttonState = !(PORTG & SW1_MASK);

            //Any change detected?
            if (buttonState != prevButtonState) {
                if (buttonState)
                    strcpy(buffer, "pressed");
                else
                    strcpy(buffer, "released");

                //Send PUBLISH packet
                error = mqttClientPublish(&mqttClientContext, "board/buttons/1",
                        buffer, strlen(buffer), MQTT_QOS_LEVEL_1, FALSE, NULL);

                //Save current state
                prevButtonState = buttonState;
            }
            
            
            /**
            * Configure gateway communication channels
            **/
            if (gatewayID != -1 && initConfig && currentDevice == -1) {


                TRACE_INFO("\r\n Go Into Setup? \r\n");
                //Configure all the channels that will be used. All but 1 need to have context ad infinitum
                strcpy(gatewayRequest, gatewayChannel);
                strcpy(gatewayNodes, gatewayChannel);
                strcpy(gatewaytxNum, gatewayChannel);
                strcpy(gatewayTimer, gatewayChannel);
                strcpy(gatewayFinish, gatewayChannel);


                strcat(gatewayRequest, "request");
                strcat(gatewayNodes, "nodes");
                strcat(gatewaytxNum, "txNum");
                strcat(gatewayTimer, "timer");
                strcat(gatewayFinish, "finish");



                //Here we subscribe to all relevant gateway channels, and then publish to the request channel.
                error = mqttClientSubscribe(&mqttClientContext, gatewayNodes, MQTT_QOS_LEVEL_1, NULL);
                error = mqttClientSubscribe(&mqttClientContext, gatewayTimer, MQTT_QOS_LEVEL_1, NULL);

                error = mqttClientPublish(&mqttClientContext, gatewayRequest, "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
                initConfig = false;
                TRACE_INFO("\r\n A:%d B:%d C:%d\r\n", gatewayID, initConfig, currentDevice);

                
            } 
            /**
            * Establish Node Communication Channels
            **/
            else if (gatewayID != -1 && !initConfig && currentDevice == 0) {
                TRACE_INFO("Init Nodes.\r\n", gatewayChannel);
                uint8_t i;
                for (i = 0; i < 32; i++) {
                    TRACE_INFO("\r\n FOR LOOP\r\n", error);
                    error = configureNodes(i);
                }
                initConfig = true;
            }
            
            /**
            * Begin Node Communication
            **/
            if (initializedValues == 64 && !neverReturn) {
                TRACE_INFO("\r\n INIT WIFI\r\n", error);
                neverReturn = true;
                currentDevice = 0;
                wifiInit();
            }
            /**
            * Communicates immediately when a Node fails. Stopped a critical bug.
            **/
            if (nodeFailed) {
                nodeFailed = false;
                char channelID[32];
                if (devList[failedDevice].type == 'S') {
                    sprintf(channelID, "sensor/%d/alive", devList[failedDevice].ID);
                } else {
                    sprintf(channelID, "act/%d/alive", devList[failedDevice].ID);
                }
                mqttClientPublish(&mqttClientContext, channelID, "0", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
            }


            /**
            * Sends all the valid and working node's data to the cloud.
            **/
            if (gatewayFinished) {
                gatewayFinished = false;

                int i;
                for (i = 0; i < 32; i++) {
                    if (devList[i].valid && devList[i].node != NULL) {
                        if (devList[i].node->live) {
                            TRACE_INFO("\r\nLIVE\r\n", error);
                            char channelID[32];
                            if (devList[i].type == 'S') {
                                sprintf(channelID, "sensor/%d/alive", devList[i].ID);
                                if (devList[i].node->mBuffValid) {
                                    char channelType[32];
                                    sprintf(channelType, "sensor/%d/data/%d", devList[i].ID, 1);
                                    TRACE_INFO("INFO: SENDING DATA %s for NODE %d in position %d\r\n", devList[i].node->mBuff, devList[i].ID, i);
                                    error = mqttClientPublish(&mqttClientContext, channelType, devList[i].node->mBuff, strlen(devList[i].node->mBuff), MQTT_QOS_LEVEL_1, FALSE, NULL);
                                    devList[i].node->mBuffValid = false;
                                    int j;
                                    for (j = 0; j < strlen(devList[i].node->mBuff); j++) {
                                        devList[i].node->mBuff[j] = '\0';
                                    }
                                } else {
                                    TRACE_INFO("INFO: DATA for NODE %d in position %d INVALID!!\r\n", devList[i].ID, i);
                                }
                            } else {
                                sprintf(channelID, "act/%d/alive", devList[i].ID);
                            }
                            TRACE_INFO("INFO: SENDING ALIVE for NODE %d in position %d\r\n", devList[i].ID, i);
                            error = mqttClientPublish(&mqttClientContext, channelID, "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
                            devList[i].node->live = false;
                        }
                    }
                }
                mqttClientPublish(&mqttClientContext, gatewayFinish, "1", 1, MQTT_QOS_LEVEL_1, FALSE, NULL);
            }


            //Check status code
            if (!error) {
                //Process events
                error = mqttClientTask(&mqttClientContext, 100);
            }

            //Connection to MQTT server lost?
            if (error != NO_ERROR) {
                TRACE_INFO("\r\n ERROR #%d\r\n", error);
                //Close connection
                mqttClientClose(&mqttClientContext);
                //Update connection state
                connectionState = FALSE;
                SoftReset();
                //Recovery delay
                osDelayTask(2000);
            }
        }
    }
}

/**
 * @brief LED task
 * @param[in] param Unused parameter
 **/

void ledTask(void *param) {
    //Endless loop
    while (1) {
        LATESET = LED1_MASK;
        osDelayTask(100);
        LATECLR = LED1_MASK;
        osDelayTask(900);
    }
}

/**
 * @brief Main entry point
 * @return Unused value
 **/

int_t main(void) {
    error_t error;
    OsTask *task;
    uint_t i;
    uint32_t value1;
    uint32_t value2;

    //System initialization
    systemInit();

    //Initialize kernel
    osInitKernel();
    //Configure debug UART
    debugInit(115200);

    //Start-up message
    TRACE_INFO("\r\n");
    TRACE_INFO("*****************************************\r\n");
    TRACE_INFO("*** CycloneTCP Wi-Fi HTTP Server/MQTT CLIENT Demo ***\r\n");
    TRACE_INFO("*****************************************\r\n");
    TRACE_INFO("Copyright: 2010-2019 Oryx Embedded SARL. EDITED BY BRENDAN\r\n");
    TRACE_INFO("Compiled: %s %s\r\n", __DATE__, __TIME__);
    TRACE_INFO("Target: PIC32MZ2048EFM100\r\n");
    TRACE_INFO("\r\n");

    //Configure I/Os
    ioInit();

    //Setting this to -1 saves on memory. No need to store a bool, as -1 is an invalid ID.


    //Enable TRNG
    RNGCON |= _RNGCON_TRNGEN_MASK;



    //Generate a random seed
    for (i = 0; i < 32; i += 8) {
        //Wait for the RNG to contain a valid data
        while (RNGCNT < 64);

        //Get 64-bit random value
        value2 = RNGSEED2;
        value1 = RNGSEED1;

        //Copy random value
        seed[i] = value1 & 0xFF;
        seed[i + 1] = (value1 >> 8) & 0xFF;
        seed[i + 2] = (value1 >> 16) & 0xFF;
        seed[i + 3] = (value1 >> 24) & 0xFF;
        seed[i + 4] = value2 & 0xFF;
        seed[i + 5] = (value2 >> 8) & 0xFF;
        seed[i + 6] = (value2 >> 16) & 0xFF;
        seed[i + 7] = (value2 >> 24) & 0xFF;
    }

    //PRNG initialization
    error = yarrowInit(&yarrowContext);
    //Any error to report?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize PRNG!\r\n");
    }

    //Properly seed the PRNG
    error = yarrowSeed(&yarrowContext, seed, sizeof (seed));
    //Any error to report?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to seed PRNG!\r\n");
    }

    currentAP = 0;


    //TCP/IP stack initialization
    error = netInit();
    //Any error to report?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize TCP/IP stack!\r\n");
    }

    //ALWAYS CALL THIS BEFORE SETTING THE APs. This initializes the list.




    //Configure the first network interface (Ethernet 10/100)
    ethInterfaceInit();



    //Create a task to blink the LED
    task = osCreateTask("LED", ledTask, NULL, 200, OS_TASK_PRIORITY_NORMAL);
    //Failed to create the task?
    if (task == OS_INVALID_HANDLE) {
        //Debug message
        TRACE_ERROR("Failed to create task!\r\n");
    }

    //Create MQTT test task
    task = osCreateTask("MQTT", mqttTestTask, NULL, 750, OS_TASK_PRIORITY_NORMAL);
    //Failed to create the task?
    if (task == OS_INVALID_HANDLE) {
        //Debug message
        TRACE_ERROR("Failed to create task!\r\n");
    }

    //Start the execution of tasks
    osStartKernel();

    //This function should never return
    return 0;
}


/**
 * @brief Begins the initialization of the WILC1500 wifi adapater.
 * @return Error Code
 **/
error_t wifiInit(void) {
    error_t error;

    httpInitialized = false;

    //Configure the second network interface (Wi-Fi STA mode)
    wifiStaInterfaceInit();
    //Get default settings
    httpServerGetDefaultSettings(&httpServerSettings);
    //Bind HTTP server to the desired interface
    httpServerSettings.interface = &netInterface[1];
    //Listen to port 80
    httpServerSettings.port = HTTP_PORT;
    //Client connections
    httpServerSettings.maxConnections = APP_HTTP_MAX_CONNECTIONS;
    httpServerSettings.connections = httpConnections;
    //Specify the server's root directory
    strcpy(httpServerSettings.rootDirectory, "/www/");
    //Set default home page
    strcpy(httpServerSettings.defaultDocument, "index.shtm");
    //Callback functions
    httpServerSettings.cgiCallback = httpServerCgiCallback;
    httpServerSettings.requestCallback = httpServerRequestCallback;
    httpServerSettings.uriNotFoundCallback = httpServerUriNotFoundCallback;

    //HTTP server initialization
    error = httpServerInit(&httpServerContext, &httpServerSettings);
    //Failed to initialize HTTP server?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize HTTP server!\r\n");
    }

    //Start HTTP server
    error = httpServerStart(&httpServerContext);
    //Failed to start HTTP server?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to start HTTP server!\r\n");
    }
    httpInitialized = true;
    return error;

}

/**
 * @brief Ethernet interface initialization
 **/

error_t ethInterfaceInit(void) {
    error_t error;
    NetInterface *interface;
    MacAddr macAddr;
#if (APP_IF0_USE_DHCP_CLIENT == DISABLED)
    Ipv4Addr ipv4Addr;
#endif
#if (APP_IF0_USE_SLAAC == DISABLED)
    Ipv6Addr ipv6Addr;
#endif

    //Configure the first network interface (Ethernet 10/100)
    interface = &netInterface[0];

    //Set interface name
    netSetInterfaceName(interface, APP_IF0_NAME);
    //Set host name
    netSetHostname(interface, APP_IF0_HOST_NAME);

#if (APP_IF0_USE_DEFAULT_MAC_ADDR == ENABLED)
    //Use the factory preprogrammed MAC address
    macStringToAddr("00-00-00-00-00-00", &macAddr);
    netSetMacAddr(interface, &macAddr);
#else
    //Override the factory preprogrammed address
    macStringToAddr(APP_IF0_MAC_ADDR, &macAddr);
    netSetMacAddr(interface, &macAddr);
#endif

    //Select the relevant network adapter
    netSetDriver(interface, &pic32mzEthDriver);
    netSetPhyDriver(interface, &lan8720PhyDriver);

    //Initialize network interface
    error = netConfigInterface(interface);
    //Any error to report?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to configure interface %s!\r\n", interface->name);
        //Exit immediately
        return error;
    }

#if (IPV4_SUPPORT == ENABLED)
#if (APP_IF0_USE_DHCP_CLIENT == ENABLED)
    //Get default settings
    dhcpClientGetDefaultSettings(&dhcpClientSettings);
    //Set the network interface to be configured by DHCP
    dhcpClientSettings.interface = interface;
    //Disable rapid commit option
    dhcpClientSettings.rapidCommit = FALSE;

    //DHCP client initialization
    error = dhcpClientInit(&dhcpClientContext0, &dhcpClientSettings);
    //Failed to initialize DHCP client?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize DHCP client!\r\n");
        //Exit immediately
        return error;
    }

    //Start DHCP client
    error = dhcpClientStart(&dhcpClientContext0);
    //Failed to start DHCP client?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to start DHCP client!\r\n");
        //Exit immediately
        return error;
    }
#else
    //Set IPv4 host address
    ipv4StringToAddr(APP_IF0_IPV4_HOST_ADDR, &ipv4Addr);
    ipv4SetHostAddr(interface, ipv4Addr);

    //Set subnet mask
    ipv4StringToAddr(APP_IF0_IPV4_SUBNET_MASK, &ipv4Addr);
    ipv4SetSubnetMask(interface, ipv4Addr);

    //Set default gateway
    ipv4StringToAddr(APP_IF0_IPV4_DEFAULT_GATEWAY, &ipv4Addr);
    ipv4SetDefaultGateway(interface, ipv4Addr);

    //Set primary and secondary DNS servers
    ipv4StringToAddr(APP_IF0_IPV4_PRIMARY_DNS, &ipv4Addr);
    ipv4SetDnsServer(interface, 0, ipv4Addr);
    ipv4StringToAddr(APP_IF0_IPV4_SECONDARY_DNS, &ipv4Addr);
    ipv4SetDnsServer(interface, 1, ipv4Addr);
#endif
#endif

#if (IPV6_SUPPORT == ENABLED)
#if (APP_IF0_USE_SLAAC == ENABLED)
    //Get default settings
    slaacGetDefaultSettings(&slaacSettings);
    //Set the network interface to be configured
    slaacSettings.interface = interface;

    //SLAAC initialization
    error = slaacInit(&slaacContext0, &slaacSettings);
    //Failed to initialize SLAAC?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize SLAAC!\r\n");
        //Exit immediately
        return error;
    }

    //Start IPv6 address autoconfiguration process
    error = slaacStart(&slaacContext0);
    //Failed to start SLAAC process?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to start SLAAC!\r\n");
        //Exit immediately
        return error;
    }
#else
    //Set link-local address
    ipv6StringToAddr(APP_IF0_IPV6_LINK_LOCAL_ADDR, &ipv6Addr);
    ipv6SetLinkLocalAddr(interface, &ipv6Addr);
#endif
#endif

    //Successful initialization
    return NO_ERROR;
}

/**
 * @brief Wi-Fi STA interface initialization
 **/

error_t wifiStaInterfaceInit(void) {
    error_t error;
    NetInterface *interface;
    MacAddr macAddr;
#if (APP_IF1_USE_DHCP_CLIENT == DISABLED)
    Ipv4Addr ipv4Addr;
#endif
#if (APP_IF1_USE_SLAAC == DISABLED)
    Ipv6Addr ipv6Addr;
#endif

    //Configure the second network interface (Wi-Fi STA mode)
    interface = &netInterface[1];

    //Set interface name
    netSetInterfaceName(interface, APP_IF1_NAME);
    //Set host name
    netSetHostname(interface, APP_IF1_HOST_NAME);
    //Set host MAC address
    macStringToAddr(APP_IF1_MAC_ADDR, &macAddr);
    netSetMacAddr(interface, &macAddr);
    //Select the relevant network adapter
    netSetDriver(interface, &wilc1000StaDriver);

    //Initialize network interface
    error = netConfigInterface(interface);
    //Any error to report?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to configure interface %s!\r\n", interface->name);
        //Exit immediately
        return error;
    }

#if (IPV4_SUPPORT == ENABLED)
#if (APP_IF1_USE_DHCP_CLIENT == ENABLED)
    //Get default settings
    dhcpClientGetDefaultSettings(&dhcpClientSettings);
    //Set the network interface to be configured by DHCP
    dhcpClientSettings.interface = interface;
    //Disable rapid commit option
    dhcpClientSettings.rapidCommit = FALSE;

    //DHCP client initialization
    error = dhcpClientInit(&dhcpClientContext1, &dhcpClientSettings);
    //Failed to initialize DHCP client?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize DHCP client!\r\n");
        //Exit immediately
        return error;
    }

    //Start DHCP client
    error = dhcpClientStart(&dhcpClientContext1);
    //Failed to start DHCP client?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to start DHCP client!\r\n");
        //Exit immediately
        return error;
    }
#else
    //Set IPv4 host address
    ipv4StringToAddr(APP_IF1_IPV4_HOST_ADDR, &ipv4Addr);
    ipv4SetHostAddr(interface, ipv4Addr);

    //Set subnet mask
    ipv4StringToAddr(APP_IF1_IPV4_SUBNET_MASK, &ipv4Addr);
    ipv4SetSubnetMask(interface, ipv4Addr);

    //Set default gateway
    ipv4StringToAddr(APP_IF1_IPV4_DEFAULT_GATEWAY, &ipv4Addr);
    ipv4SetDefaultGateway(interface, ipv4Addr);

    //Set primary and secondary DNS servers
    ipv4StringToAddr(APP_IF1_IPV4_PRIMARY_DNS, &ipv4Addr);
    ipv4SetDnsServer(interface, 0, ipv4Addr);
    ipv4StringToAddr(APP_IF1_IPV4_SECONDARY_DNS, &ipv4Addr);
    ipv4SetDnsServer(interface, 1, ipv4Addr);
#endif
#endif

#if (IPV6_SUPPORT == ENABLED)
#if (APP_IF1_USE_SLAAC == ENABLED)
    //Get default settings
    slaacGetDefaultSettings(&slaacSettings);
    //Set the network interface to be configured
    slaacSettings.interface = interface;

    //SLAAC initialization
    error = slaacInit(&slaacContext1, &slaacSettings);
    //Failed to initialize SLAAC?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to initialize SLAAC!\r\n");
        //Exit immediately
        return error;
    }

    //Start IPv6 address autoconfiguration process
    error = slaacStart(&slaacContext1);
    //Failed to start SLAAC process?
    if (error) {
        //Debug message
        TRACE_ERROR("Failed to start SLAAC!\r\n");
        //Exit immediately
        return error;
    }
#else
    //Set link-local address
    ipv6StringToAddr(APP_IF1_IPV6_LINK_LOCAL_ADDR, &ipv6Addr);
    ipv6SetLinkLocalAddr(interface, &ipv6Addr);
#endif
#endif

    //Successful initialization
    return NO_ERROR;
}

/**
 * @brief CGI callback function
 * @param[in] connection Handle referencing a client connection
 * @param[in] param NULL-terminated string that contains the CGI parameter
 * @return Error code
 **/

error_t httpServerCgiCallback(HttpConnection *connection,
        const char_t *param) {
    static uint_t pageCounter = 0;
    uint_t length;
    MacAddr macAddr;
#if (IPV4_SUPPORT == ENABLED)
    Ipv4Addr ipv4Addr;
#endif
#if (IPV6_SUPPORT == ENABLED)
    uint_t n;
    Ipv6Addr ipv6Addr;
#endif

    //Underlying network interface
    NetInterface *interface = connection->socket->interface;

    //Check parameter name
    if (!strcasecmp(param, "PAGE_COUNTER")) {
        pageCounter++;
        sprintf(connection->buffer, "%u time%s", pageCounter, (pageCounter >= 2) ? "s" : "");
    } else if (!strcasecmp(param, "BOARD_NAME")) {
        strcpy(connection->buffer, "PIC32MZ EF Curiosity");
    } else if (!strcasecmp(param, "SYSTEM_TIME")) {
        systime_t time = osGetSystemTime();
        formatSystemTime(time, connection->buffer);
    } else if (!strcasecmp(param, "MAC_ADDR")) {
        netGetMacAddr(interface, &macAddr);
        macAddrToString(&macAddr, connection->buffer);
    } else if (!strcasecmp(param, "IPV4_ADDR")) {
        ipv4GetHostAddr(interface, &ipv4Addr);
        ipv4AddrToString(ipv4Addr, connection->buffer);
    } else if (!strcasecmp(param, "SUBNET_MASK")) {
        ipv4GetSubnetMask(interface, &ipv4Addr);
        ipv4AddrToString(ipv4Addr, connection->buffer);
    } else if (!strcasecmp(param, "DEFAULT_GATEWAY")) {
        ipv4GetDefaultGateway(interface, &ipv4Addr);
        ipv4AddrToString(ipv4Addr, connection->buffer);
    } else if (!strcasecmp(param, "IPV4_PRIMARY_DNS")) {
        ipv4GetDnsServer(interface, 0, &ipv4Addr);
        ipv4AddrToString(ipv4Addr, connection->buffer);
    } else if (!strcasecmp(param, "IPV4_SECONDARY_DNS")) {
        ipv4GetDnsServer(interface, 1, &ipv4Addr);
        ipv4AddrToString(ipv4Addr, connection->buffer);
    }
#if (IPV6_SUPPORT == ENABLED)
    else if (!strcasecmp(param, "LINK_LOCAL_ADDR")) {
        ipv6GetLinkLocalAddr(interface, &ipv6Addr);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
    } else if (!strcasecmp(param, "GLOBAL_ADDR")) {
        ipv6GetGlobalAddr(interface, 0, &ipv6Addr);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
    } else if (!strcasecmp(param, "IPV6_PREFIX")) {
        ipv6GetPrefix(interface, 0, &ipv6Addr, &n);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
        length = strlen(connection->buffer);
        sprintf(connection->buffer + length, "/%u", n);
    } else if (!strcasecmp(param, "ROUTER")) {
        ipv6GetDefaultRouter(interface, 0, &ipv6Addr);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
    } else if (!strcasecmp(param, "IPV6_PRIMARY_DNS")) {
        ipv6GetDnsServer(interface, 0, &ipv6Addr);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
    } else if (!strcasecmp(param, "IPV6_SECONDARY_DNS")) {
        ipv6GetDnsServer(interface, 1, &ipv6Addr);
        ipv6AddrToString(&ipv6Addr, connection->buffer);
    }
#endif
    else {
        return ERROR_INVALID_TAG;
    }

    //Get the length of the resulting string
    length = strlen(connection->buffer);

    //Send the contents of the specified environment variable
    return httpWriteStream(connection, connection->buffer, length);
}

/**
 * @brief HTTP request callback
 * @param[in] connection Handle referencing a client connection
 * @param[in] uri NULL-terminated string containing the path to the requested resource
 * @return Error code
 **/

error_t httpServerRequestCallback(HttpConnection *connection,
        const char_t *uri) {
    char_t buffer[1024];
    size_t numReceived;
    uint16_t i;
    error_t error;

    httpReadStream(connection, buffer, 1024, &numReceived, 0);

    for (i = numReceived; i < 1024; i++) {
        buffer[i] = '\0';
    }



    //TRACE_INFO("Body: %s\r\n", buffer);



    if (strcasecmp(connection->request.method, "DELETE") != 0) {
        TRACE_INFO("\r\nVALID BUFF\r\n");
        if (devList[currentDevice].type == 'S') {
            strncpy(devList[currentDevice].node->mBuff, buffer, strlen(buffer) + 1);
            devList[currentDevice].node->mBuffValid = true;

        }
    } else {
        TRACE_INFO("Device Ready For Shutdown: CLOSING CONNECTION\r\n");
        devList[currentDevice].node->live = true;
        connection->endConnection = TRUE;

    }



    connection->response.statusCode = 200;
    connection->response.contentType = mimeGetType(uri);
    connection->response.chunkedEncoding = FALSE;
    connection->response.contentLength = numReceived;
    connection->response.maxAge = HTTP_SERVER_MAX_AGE;


    //Send the header to the client
    error = httpWriteHeader(connection);
    //Any error to report?
    if (error) {
        //Return status code
        TRACE_ERROR("ERROR:POINT 1: %d\r\n", error);
    }




    //Send response body
    if (devList[currentDevice].node->hBuffValid) {
        TRACE_ERROR("INALID\r\n");
        error = httpWriteStream(connection, devList[currentDevice].node->hBuff, strlen(devList[currentDevice].node->hBuff));
        devList[currentDevice].node->hBuffValid = false;
    } else {
        error = httpWriteStream(connection, "OK\r\n", 4);
        devList[currentDevice].node->hBuffValid = false;
    }
    //Any error to report?
    if (error) {
        TRACE_ERROR("ERROR:POINT 2: %d\r\n", error);
    }

    //Properly close output stream
    /*error = httpCloseStream(connection);
    if (error) {
        TRACE_ERROR("ERROR:POINT 3: %d\r\n", error);
    }*/


    //Not implemented
    return NO_ERROR;
}

/**
 * @brief URI not found callback
 * @param[in] connection Handle referencing a client connection
 * @param[in] uri NULL-terminated string containing the path to the requested resource
 * @return Error code
 **/

error_t httpServerUriNotFoundCallback(HttpConnection *connection,
        const char_t *uri) {
    //Not implemented
    return ERROR_NOT_FOUND;
}


/**
 * @brief This is called when the system reaches an unrecoverable state. This goes to the C initialization point and acts as if the MCLR button was clicked. Going to this is a last resort.
 **/
void __attribute__((noreturn)) SoftReset(void) {
    TRACE_ERROR("THIS IS BAD. SOFT RESET!!!\r\n");
    __builtin_disable_interrupts();
    /* perform a system unlock sequence ,starting critical sequence*/
    SYSKEY = 0x00000000; //write invalid key to force lock
    SYSKEY = 0xAA996655; //write key1 to SYSKEY
    SYSKEY = 0x556699AA; //write key2 to SYSKEY
    /* set SWRST bit to arm reset */
    RSWRSTSET = 1;
    /* read RSWRST register to trigger reset */
    unsigned int dummy;

    dummy = RSWRST;
    /* prevent any unwanted code execution until reset occurs*/
    while (1);

}
