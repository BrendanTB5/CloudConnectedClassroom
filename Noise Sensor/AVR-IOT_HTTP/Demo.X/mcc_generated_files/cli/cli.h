

#include "../drivers/timeout.h"

void CLI_init(void);

char deviceID;
uint8_t SSID[64];
uint8_t Password[64];
bool valuesSet;
uint32_t CLI_task(void*);
char secondsPassed;

timerStruct_t CLI_task_timer;
