/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include <stdint.h>
#include <stdbool.h>

#include "noise.h"
#include "include/port.h"
#include "drivers/spi_master.h"

#define NOISE_CONFIGURATION_WRITE       (0 << 15)
#define NOISE_CONFIGURATION_IGNORE      (1 << 15)

#define NOISE_CONFIGURATION_BUFFERED    (1 << 14)
#define NOISE_CONFIGURATION_UNBUFFERED  (0 << 14)

#define NOISE_CONFIGURATION_OUTPUT_1X   (1 << 13)
#define NOISE_CONFIGURATION_OUTPUT_2X   (0 << 13)

#define NOISE_CONFIGURATION_ACTIVE      (1 << 12)
#define NOISE_CONFIGURATION_SHUTDOWN    (0 << 12)

#define NOISE_CONFIGURATION_BUFFERED_DEFAULT    NOISE_CONFIGURATION_BUFFERED
#define NOISE_CONFIGURATION_OUTPUT_DEFAULT      NOISE_CONFIGURATION_OUTPUT_1X

#define NOISE_CONFIGURATION_DEFAULT     (NOISE_CONFIGURATION_WRITE | NOISE_CONFIGURATION_BUFFERED_DEFAULT | NOISE_CONFIGURATION_OUTPUT_DEFAULT | NOISE_CONFIGURATION_ACTIVE)

static void NOISE_Write(uint16_t writeValue);

void NOISE_Initialize(void)
{
    uint16_t defaultThreshold = 225;
    PORTC_set_pin_level(3, true); /* set NOISE_nCS output high */;
    PORTA_set_pin_level(0, false); /* set NOISE_nENABLE output low */;
    NOISE_SetThreshold(defaultThreshold);
}

void NOISE_SetThreshold(uint16_t threshold)
{
    if(threshold > 4095)
    {
        threshold = 4095;
    }
    
    NOISE_Write(threshold | NOISE_CONFIGURATION_DEFAULT);
}

bool NOISE_IsNoisy(void)
{
    return PORTD_get_pin_level(6) /* get NOISE_INT value */;
}

static void NOISE_Write(uint16_t writeValue)
{
    spi_master_open(NOISE);
    PORTC_set_pin_level(3, false); /* set NOISE_nCS output low */;
    SPI0_ExchangeByte(writeValue >> 8);
    SPI0_ExchangeByte(writeValue);
    PORTC_set_pin_level(3, true); /* set NOISE_nCS output high */;
    SPI0_Close();
}
