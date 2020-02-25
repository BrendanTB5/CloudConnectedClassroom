/**
 *
 * \file
 *
 * \brief WINC1500 Example.
 *
 * Copyright (c) 2018 Microchip Technology Inc. and its subsidiaries.
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
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */
/*
#include "../mcc.h"
#include "../winc/include/winc.h"

void winc_register_init(void);

void wifi_event_cb(uint8_t u8WiFiEvent, const void *const pvMsg)
{
    switch(u8WiFiEvent)
    {
    case M2M_WIFI_REQ_DHCP_CONF:
        {
            uint8_t *pu8IPAddress = (uint8_t*)pvMsg;

            printf("Associated STA has IP Address \"%u.%u.%u.%u\"\n",pu8IPAddress[0],pu8IPAddress[1],pu8IPAddress[2],pu8IPAddress[3]);
        }
        break;

    default:
        break;
    }
}

void winc_example(void)
{
    winc_register_init();
    winc_adapter_init();
    tstrWifiInitParam   param;

    param.pfAppWifiCb   = wifi_event_cb;
    if(M2M_SUCCESS == m2m_wifi_init(&param))
    {
        tstrM2MAPModeConfig     apModeConfig;

        strcpy((char*)apModeConfig.strApConfig.au8SSID, CFG_MAIN_WLAN_SSID);
        apModeConfig.strApConfig.u8ListenChannel    = 1;
        apModeConfig.strApConfig.u8SsidHide         = 0;  
        apModeConfig.strApConfig.u8SecType          = CFG_MAIN_WLAN_AUTH;
        strcpy((char*)apModeConfig.strApConfig.au8Key, CFG_MAIN_WLAN_PSK);
        apModeConfig.strApConfig.u8KeySz = strlen(CFG_MAIN_WLAN_PSK);
            
        
        // IP Address
        apModeConfig.strApConfig.au8DHCPServerIP[0] = 192;
        apModeConfig.strApConfig.au8DHCPServerIP[1] = 168;
        apModeConfig.strApConfig.au8DHCPServerIP[2] = 12;
        apModeConfig.strApConfig.au8DHCPServerIP[3] = 1;

        // Default router IP
        memcpy(apModeConfig.strApConfigExt.au8DefRouterIP, apModeConfig.strApConfig.au8DHCPServerIP, 4);

        // DNS Server IP
        memcpy(apModeConfig.strApConfigExt.au8DNSServerIP, apModeConfig.strApConfig.au8DHCPServerIP, 4);

        // Subnet mask
        apModeConfig.strApConfigExt.au8SubnetMask[0]    = 255;
        apModeConfig.strApConfigExt.au8SubnetMask[1]    = 255;
        apModeConfig.strApConfigExt.au8SubnetMask[2]    = 255;
        apModeConfig.strApConfigExt.au8SubnetMask[3]    = 0;

        // Trigger AP
        m2m_wifi_enable_ap_ext(&apModeConfig);

        while(1)
        {
            m2m_wifi_handle_events(NULL);
        }
    }
}

void winc_register_init(void)
{
}
*/