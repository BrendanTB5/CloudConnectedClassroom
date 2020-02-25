#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <avr/wdt.h>

#include "../include/usart2.h"
#include "../mcc.h"
#include "cli.h"


#define WIFI_PARAMS_WEP 3
#define MAX_COMMAND_SIZE 150
#define NEWLINE "\r\n"

char command[MAX_COMMAND_SIZE];
bool isCommandReceived = false;
uint8_t index;
bool commandTooLongFlag = false;



void command_recieved(char *command_text);
void reset_cmd(char *p);
void setDeviceID(char *p);
void set_wifi_auth(char *ssid_pwd_auth);
void getTime(char *p);

bool eolTest(char c);
void enableRXInt(void);

#define CLI_TASK_INTERVAL      50




struct cmd {
	const char * const command;
	void (* const handler) (char *argument);
};

const struct cmd commands[] ={
	{ "reset", reset_cmd},
	{ "wifi", set_wifi_auth},
	{ "device", setDeviceID},
	{ "time", getTime},
};

void CLI_init(void)
{
	index = 0;
	CLI_task_timer.callbackPtr = (void *) CLI_task;
	enableRXInt();
	timeout_create(&CLI_task_timer, CLI_TASK_INTERVAL);
}

bool endOfLineTest(char c)
{
	static char test = 0;
	bool retvalue = true;

	if (c == '\n') {
		if (test == '\r') {
			retvalue = false;
		}
	}
	test = c;
	return retvalue;
}

void command_recieved(char *command_text)
{
	char *argument = strstr(command_text, " ");
	uint8_t cmp;
	uint8_t ct_len;
	uint8_t cc_len;
	uint8_t i = 0;

	if (argument != NULL) {
		/* Replace the delimiter with string terminator */
		*argument = '\0';
		/* Point after the string terminator, to the actual string */
		argument++;
	}

	for (i = 0; i < sizeof(commands) / sizeof(*commands); i++) {
		cmp = strcmp(command_text, commands[i].command);
		ct_len = strlen(command_text);
		cc_len = strlen(commands[i].command);

		if (cmp == 0 && ct_len == cc_len) {
			if (commands[i].handler != NULL) {
				commands[i].handler(argument);
				return;
			}
		}
	}
	
	printf("WUT\r\n");
}

uint32_t CLI_task(void *param)
{
	// read all the EUSART bytes in the queue
	while (USART2_IsRxReady() && !isCommandReceived) {
		uint8_t c = USART2_Read();
		// read until we get a newline
		if (c == '\r' || c == '\n') {
			command[index] = 0;

			if (!commandTooLongFlag) {
				if (endOfLineTest(c)) {
					command_recieved((char *)command);
				}
			}
			if (commandTooLongFlag) {
				printf(NEWLINE "Command too long" NEWLINE);
			}
			index              = 0;
			commandTooLongFlag = false;
		} else // otherwise store the character
		{
			if (index < MAX_COMMAND_SIZE) {
				command[index++] = c;
			} else {
				commandTooLongFlag = true;
			}
		}
	}

	return CLI_TASK_INTERVAL;
}


void set_wifi_auth(char *ssid_pwd_auth) {
    char *credentials[3];
    char *pch;
    uint8_t params = 0;
    uint8_t i;

    for (i = 0; i <= 2; i++)credentials[i] = '\0';

    pch = strtok(ssid_pwd_auth, ",");
    credentials[0] = pch;

    while (pch != NULL && params <= 2) {
        credentials[params] = pch;
        params++;
        pch = strtok(NULL, ",");

    }

    if (credentials[0] != NULL) {
        if (credentials[1] == NULL && credentials[2] == NULL) params = 1;
        else if (credentials[1] != NULL && credentials[2] == NULL) {
            params = atoi(credentials[1]); //Resuse the same variable to store the auth type
            if (params == 2 || params == 3)params = 5;
            else if (params == 1);
            else params = 2;
        } else params = atoi(credentials[2]);
    }
    if (strlen(ssid_pwd_auth) > 7) {
        strncpy(SSID, credentials[0], 64);
        strncpy(Password, credentials[1], 64);
        printf("SSID:%s\r\n",SSID);
        printf("PASS:%s\r\n",SSID);
        printf("\r\n NEW WIFI\r\n");
        valuesSet = true;

    }
    


}

void reset_cmd(char *pArg)
{
	(void)pArg;

	wdt_enable(WDTO_30MS);
	while(1) {};
}

void setDeviceID(char*p){
	deviceID = atoi(p);
}

void getTime(char*p){
	printf("\r\nTime Until EEPROM: %d seconds\r\n",secondsPassed);
}



void enableRXInt(void)
{
	// Empty RX buffer
	do {
		(void) USART2.RXDATAL;
	} while ((USART2.STATUS & USART_RXCIF_bm) != 0);

	// Enable RX interrupt
	USART2.CTRLA |= 1 << USART_RXCIE_bp;
}