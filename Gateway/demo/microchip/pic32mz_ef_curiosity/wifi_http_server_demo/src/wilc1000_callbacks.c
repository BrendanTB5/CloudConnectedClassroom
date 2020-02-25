/**
 * @file wilc1000_callbacks.c
 * @brief WILC1000 user callbacks
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
 **/

//Dependencies
#include <string.h>
#include <stdbool.h>
#include "driver/include/m2m_wifi.h"
#include "os/include/m2m_wifi_ex.h"
#include "debug.h"
#include "nodeTypes.h"

//Wi-Fi configuration (AP mode)
#define APP_WIFI_AP_INTERFACE DISABLED
#define APP_WIFI_AP_SSID "TEST_WILC1000_AP"
#define APP_WIFI_AP_SECURITY M2M_WIFI_SEC_WEP
#define APP_WIFI_AP_KEY "1122334455"
#define APP_WIFI_AP_CHANNEL M2M_WIFI_CH_6

//Wi-Fi configuration (STA mode)
#define APP_WIFI_STA_INTERFACE ENABLED
#define APP_WIFI_STA_SSID "microchip"
#define APP_WIFI_STA_SECURITY M2M_WIFI_SEC_WPA_PSK
#define APP_WIFI_STA_KEY "microchip"
#define APP_WIFI_STA_CHANNEL M2M_WIFI_CH_ALL









bool APConnected = false;



int numTimesAttempted = 0;

/**
 * @brief Connect to Wi-Fi network (STA mode)
 **/

void wilc1000Connect(void) {
#if (APP_WIFI_STA_INTERFACE == ENABLED)
    int8_t status;

    //while(!httpInitialized){
    //	osDelayTask(200);
    //}


    //Debug message
    TRACE_INFO("WILC1000: Connecting to Wi-Fi network (%s), this is connection %d.\r\nPassword:%s\r\n", devList[currentDevice].node->SSID, currentDevice, devList[currentDevice].node->Password);


    //Connect to the specified network (WPA/WPA2 personal)
    status = os_m2m_wifi_connect(devList[currentDevice].node->SSID, strlen(devList[currentDevice].node->SSID),
            M2M_WIFI_SEC_WPA_PSK, (void *) devList[currentDevice].node->Password, APP_WIFI_STA_CHANNEL);


    //Debug message

    numTimesAttempted++;

    //Delay required before sending a new command
    osDelayTask(200);

    TRACE_INFO("  os_m2m_wifi_connect = %d\r\n", status);

#endif
}


/**
 * @brief Handles the connection logic for the Node communication routine. 
 **/
void wilc100ConnectLogic(void) {
    TRACE_INFO("WILC1000: Wi-Fi state change!!!\r\n");
    if (APConnected == true) {
        TRACE_INFO("WILC1000: Disconnected From AP\r\n");

        currentDevice++;
        TRACE_INFO("WILC1000: DEVICE VALID1?: %d\r\n", devList[currentDevice].valid);

        if (currentDevice >= NUM_CONNECTIONS || !devList[currentDevice].valid) {
            TRACE_INFO("WILC1000: Gone through the list of Connections\r\n");
            gatewayFinished = true;
            APConnected = false;
            numTimesAttempted = 0;
        } else {
            APConnected = false;
            numTimesAttempted = 0;
            wilc1000Connect();
        }

    } else {
        if (numTimesAttempted >= 10) {
            numTimesAttempted = 0;
            failedDevice = currentDevice;
            currentDevice++;
            TRACE_INFO("WILC1000: DEVICE VALID2?: %d\r\n", devList[currentDevice].valid);
            
            nodeFailed = true;
            if (currentDevice >= NUM_CONNECTIONS || !devList[currentDevice].valid) {
                TRACE_INFO("WILC1000: Gone through the list of Connections\r\n");
                gatewayFinished = true;
            } else {
                wilc1000Connect();
            }
        } else {

            wilc1000Connect();
        }
    }
}

/**
 * @brief Callback function that processes Wi-Fi event notifications
 * @param[in] msgType Type of notification
 * @param[in] msg Pointer to the buffer containing the notification parameters
 **/

void wilc1000EventHook(uint8_t msgType, void *msg) {
    tstrM2mWifiStateChanged *stateChangedMsg;
    //Debug message
    TRACE_INFO("WILC1000: Wi-Fi event hook\r\n");

    //Check message type
    if (msgType == M2M_WIFI_RESP_FIRMWARE_STRTED) {
        //Connect to the specified Wi-Fi network (STA mode)
        wilc1000Connect();
    } else if (msgType == M2M_WIFI_RESP_CON_STATE_CHANGED) {
        //Connection state
        stateChangedMsg = (tstrM2mWifiStateChanged *) msg;

        //STA interface?
        if (stateChangedMsg->u8IfcId == STATION_INTERFACE) {
            //Check link state
            if (stateChangedMsg->u8CurrState == M2M_WIFI_CONNECTED) {
                APConnected = true;

            } else {
                wilc100ConnectLogic();
            }
        }
    }
}
