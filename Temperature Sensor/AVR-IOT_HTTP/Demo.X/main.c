/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
 */

#include "mcc_generated_files/mcc.h"
#include "main.h"
#include "mcc_generated_files/examples/winc_example.h"
#include "mcc_generated_files/winc/socket/socket.h"
#include "http_lib/http_client.h"
#include <stdint.h>
#include <string.h>
#include "mcc_generated_files/cli/cli.h"
#include "mcc_generated_files/led.h"
#include "sensors.h"
#include <util/delay.h>

#define HTTP_FILE_URL  "192.168.12.1"
#define MAIN_WIFI_M2M_SERVER_PORT (80)
#define MAIN_WIFI_M2M_SERVER_IP 0xc0a80c64
#define MAIN_WIFI_M2M_REPORT_INTERVAL     (1000)
#define MAIN_WIFI_M2M_BUFFER_SIZE          1460

#define TIMEOUT_TIME 30000



static uint8_t wifi_connected;
int8_t url[16] = "/sensor0.http\0";
int8_t bad[16] = "/itbroke.http\0";
int8_t returnLength;
int8_t messageDecoded = 0;

int stop = 0;


char globalMessage[MAX_PAYLOAD_SIZE];
char messageOut[MAX_PAYLOAD_SIZE];

uint32_t defaultEEPROM(void);





void wifi_event_cb(uint8_t u8WiFiEvent, const void *const pvMsg)
{
	switch (u8WiFiEvent) {
	case M2M_WIFI_REQ_DHCP_CONF:
	{
		uint8_t *pu8IPAddress = (uint8_t*) pvMsg;

		printf("Associated STA has IP Address \"%u.%u.%u.%u\"\n", pu8IPAddress[0], pu8IPAddress[1], pu8IPAddress[2], pu8IPAddress[3]);
		wifi_connected = 1;
	}
		break;
	case M2M_WIFI_RESP_CON_STATE_CHANGED:
	{
		tstrM2mWifiStateChanged *pstrWifiState = (tstrM2mWifiStateChanged *) pvMsg;
		if (pstrWifiState->u8CurrState == M2M_WIFI_CONNECTED) {
			printf("wifi_cb: M2M_WIFI_RESP_CON_STATE_CHANGED: CONNECTED\r\n");
			LED_GREEN_SetLow();
		} else if (pstrWifiState->u8CurrState == M2M_WIFI_DISCONNECTED) {
			printf("wifi_cb: M2M_WIFI_RESP_CON_STATE_CHANGED: DISCONNECTED\r\n");
			wifi_connected = 0;
			LED_GREEN_SetHigh();
		}
	}
		break;
	default:
		break;
	}
}

void winc_example(void)
{
	//winc_register_init();
	winc_adapter_init();
	tstrWifiInitParam param;
	timerStruct_t EepromTimer;
	bool validEeprom;
	
	validEeprom = false;

	param.pfAppWifiCb = wifi_event_cb;
	if (M2M_SUCCESS == m2m_wifi_init(&param)) {
		tstrM2MAPModeConfig apModeConfig;
		
		char vWord[7];
		FLASH_ReadEepromBlock(128, vWord,7);
		
		if(!strcmp("VALID\0",vWord)){
			FLASH_ReadEepromBlock(0, SSID, 64);
			FLASH_ReadEepromBlock(64, Password, 64);
			printf("SSID:%s\r\n",SSID);
			printf("PASSWORD:%s\r\n",Password);
			printf("Valid EEPROM\r\n");
			validEeprom = true;
			EepromTimer.callbackPtr = (void *) defaultEEPROM;
			uint32_t timeout = timeout_mSecToTicks(1000);
			timeout_create(&EepromTimer, timeout);
		}
		
		

		while (!valuesSet) {
			if(validEeprom){
				LED_test();
				if(secondsPassed >=60){
					printf("Valid EEPROM\r\n");
					timeout_delete(&CLI_task_timer);
					timeout_delete(&EepromTimer);
					break;
				}
			}
			timeout_callNextCallback();
		}
		
		if(!valuesSet && secondsPassed >=60){
			FLASH_ReadEepromBlock(0, SSID, 64);
			FLASH_ReadEepromBlock(64, Password, 64);
			printf("Read EEPROM\r\n");
		}
		if(valuesSet){
			timeout_delete(&CLI_task_timer);
			timeout_delete(&EepromTimer);
			nvmctrl_status_t val;
			val = FLASH_WriteEepromBlock(0, SSID, 64);
			if(val == NVM_ERROR){
				LED_RED_SetLow();
				LED_BLUE_SetHigh();
				LED_YELLOW_SetLow();
				LED_GREEN_SetLow();
				while(1){
					
				}
			}
			val = FLASH_WriteEepromBlock(64, Password, 64);
			if(val == NVM_ERROR){
				LED_RED_SetLow();
				LED_BLUE_SetLow();
				LED_YELLOW_SetHigh();
				LED_GREEN_SetLow();
				while(1){
					
				}
			}
			val = FLASH_WriteEepromBlock(128, "VALID\0", 7);
			if(val == NVM_ERROR){
				LED_RED_SetLow();
				LED_BLUE_SetLow();
				LED_YELLOW_SetLow();
				LED_GREEN_SetHigh();
				while(1){
					
				}
			}
			printf("Wrote EEPROM\r\n");
		}
		

		strcpy((char*) apModeConfig.strApConfig.au8SSID, SSID);
		apModeConfig.strApConfig.u8ListenChannel = 1;
		apModeConfig.strApConfig.u8SsidHide = 1;
		apModeConfig.strApConfig.u8SecType = CFG_MAIN_WLAN_AUTH;
		strcpy((char*) apModeConfig.strApConfig.au8Key, Password);
		apModeConfig.strApConfig.u8KeySz = strlen(Password);


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
		apModeConfig.strApConfigExt.au8SubnetMask[0] = 255;
		apModeConfig.strApConfigExt.au8SubnetMask[1] = 255;
		apModeConfig.strApConfigExt.au8SubnetMask[2] = 255;
		apModeConfig.strApConfigExt.au8SubnetMask[3] = 0;

		initializeClient();

		// Trigger AP
		m2m_wifi_enable_ap_ext(&apModeConfig);
		LED_RED_SetHigh();
		LED_BLUE_SetLow();


	}
}

uint32_t defaultEEPROM(void)
{
	secondsPassed++;
	return timeout_mSecToTicks(1000);
}

void sendMessage(void)
{
	stop = 0;
	LED_YELLOW_SetHigh();
}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	struct sockaddr_in addr;
	int8_t socketStatus;
	int8_t httpStatus;
	
	valuesSet = false;
	secondsPassed = 0;


	message_t message;
	connection_t settings;
	
	_delay_ms(3000);


	wdt_disable();

	SYSTEM_Initialize();
	
	/*This section sets up the CLI and the LEDs*/
	
	LED_test();   
	printf("NEW LINE TIME\r\n");
	CLI_init();

	ENABLE_INTERRUPTS();
	
	LED_RED_SetLow();


	/* Initialize socket address structure. */
	addr.sin_family = AF_INET;
	addr.sin_port = _htons(MAIN_WIFI_M2M_SERVER_PORT);
	addr.sin_addr.s_addr = _htonl(MAIN_WIFI_M2M_SERVER_IP);




	settings.timeout = 0;
	settings.socketVars = &addr;
	settings.socketStatus = &socketStatus;
	settings.httpStatus = &httpStatus;




	message.httpMessageOut = (void *) messageOut;
	message.returnMessageBuffer = globalMessage;
	message.sizeOfReturn = &returnLength;
	message.messageDecoded = &messageDecoded;

	int8_t ret;
	int8_t readReply = 0;

	ret = 0;

	timerStruct_t timer;
	timer.callbackPtr = (void *) sendMessage;

	uint32_t timeout = timeout_mSecToTicks(9000);


	winc_example();
	
	setup();




	while (1) {

		/* Handle pending events from network controller. */
		m2m_wifi_handle_events(NULL);

		timeout_callNextCallback();
		if (wifi_connected == M2M_WIFI_CONNECTED && stop == 0) {
			if (messageDecoded == 1 && readReply == 1) {
				LED_YELLOW_SetLow();
				message.url = (void *) url;
				message.outgoingMessageType = HTTP_METHOD_DELETE;
				ret = http_client_communication(&settings, &message);
				timeout_create(&timer, timeout);
				stop = 1;
				readReply = 0;
			} else {
				LED_YELLOW_SetLow();
				message.url = (void *) url;
				uint16_t tempH = SENSORS_getTempValue();
				int16_t light = SENSORS_getLightValue();

				sprintf(messageOut, "3,%03d.%d,%d", tempH/100, abs(tempH)%100, light);
				message.outgoingMessageType = HTTP_METHOD_POST;
				message.sizeofhttpMessageOut = strlen(messageOut);
				ret = http_client_communication(&settings, &message);
				timeout_create(&timer, timeout);
				stop = 1;
				readReply = 1;
			}
		}
	}

}


/**
    End of File
 */
