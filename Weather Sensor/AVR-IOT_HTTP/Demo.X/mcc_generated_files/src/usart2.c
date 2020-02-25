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

#include "../include/usart2.h"

#if defined(__GNUC__)

int USART_0_printCHAR(char character, FILE *stream)
{
    USART_0_Write(character);
    return 0;
}

FILE USART_0_stream = FDEV_SETUP_STREAM(USART_0_printCHAR, NULL, _FDEV_SETUP_WRITE);

#elif defined(__ICCAVR__)

int putchar(int outChar)
{
    USART_0_Write(outChar);
    return outChar;
}
#endif

/* Static Variables holding the ringbuffer used in IRQ mode */
static uint8_t          USART_0_rxbuf[USART_0_RX_BUFFER_SIZE];
static volatile uint8_t USART_0_rx_head;
static volatile uint8_t USART_0_rx_tail;
static volatile uint8_t USART_0_rx_elements;
static uint8_t          USART_0_txbuf[USART_0_TX_BUFFER_SIZE];
static volatile uint8_t USART_0_tx_head;
static volatile uint8_t USART_0_tx_tail;
static volatile uint8_t USART_0_tx_elements;

void (*USART_0_rx_isr_cb)(void) = &USART_0_DefaultRxIsrCb;

void (*USART_0_tx_isr_cb)(void) = &USART_0_DefaultTxIsrCb;

void USART_0_DefaultRxIsrCb(void)
{
    uint8_t data;
    uint8_t tmphead;

    /* Read the received data */
    data = USART2.RXDATAL;
    /* Calculate buffer index */
    tmphead = (USART_0_rx_head + 1) & USART_0_RX_BUFFER_MASK;
        
    if (tmphead == USART_0_rx_tail) {
            /* ERROR! Receive buffer overflow */
    }else {
    /*Store new index*/
    USART_0_rx_head = tmphead;
    
    /* Store received data in buffer */
    USART_0_rxbuf[tmphead] = data;
    USART_0_rx_elements++;
    }
}

void USART_0_DefaultTxIsrCb(void)
{
    uint8_t tmptail;

    /* Check if all data is transmitted */
    if (USART_0_tx_elements != 0) {
        /* Calculate buffer index */
        tmptail = (USART_0_tx_tail + 1) & USART_0_TX_BUFFER_MASK;
        /* Store new index */
        USART_0_tx_tail = tmptail;
        /* Start transmission */
        USART2.TXDATAL = USART_0_txbuf[tmptail];
        
        USART_0_tx_elements--;
    }

    if (USART_0_tx_elements == 0) {
            /* Disable Tx interrupt */
            USART2.CTRLA &= ~(1 << USART_DREIE_bp);
    }
}

void USART_0_SetISRCb(usart_callback cb, usart_0_cb_t type)
{
    switch (type) {
        case USART_0_RX_CB:
                USART_0_rx_isr_cb = cb;
                break;
        case USART_0_TX_CB:
                USART_0_tx_isr_cb = cb;
                break;
        default:
                // do nothing
                break;
    }
}

void USART_0_SetRXISRCb(usart_callback cb)
{
    USART_0_SetISRCb(cb,USART_0_RX_CB);
}

void USART_0_SetTXISRCb(usart_callback cb)
{
    USART_0_SetISRCb(cb,USART_0_TX_CB);
}

/* Interrupt service routine for RX complete */
ISR(USART2_RXC_vect)
{
    if (USART_0_rx_isr_cb != NULL)
    {
        (*USART_0_rx_isr_cb)();
    }
}

/* Interrupt service routine for Data Register Empty */
ISR(USART2_DRE_vect)
{
    if (USART_0_tx_isr_cb != NULL)
    {
        (*USART_0_tx_isr_cb)();
    }
}

ISR(USART2_TXC_vect)
{
    USART2.STATUS |= USART_TXCIF_bm;
}

bool USART_0_IsTxReady()
{
    return (USART_0_tx_elements != USART_0_TX_BUFFER_SIZE);
}

bool USART_0_IsRxReady()
{
    return (USART_0_rx_elements != 0);
}

bool USART_0_IsTxBusy()
{
    return (!(USART2.STATUS & USART_TXCIF_bm));
}

bool USART_0_IsTxDone()
{
    return (USART2.STATUS & USART_TXCIF_bm);
}

uint8_t USART_0_Read(void)
{
    uint8_t tmptail;

    /* Wait for incoming data */
    while (USART_0_rx_elements == 0)
            ;
    /* Calculate buffer index */
    tmptail = (USART_0_rx_tail + 1) & USART_0_RX_BUFFER_MASK;
    /* Store new index */
    USART_0_rx_tail = tmptail;
    ENTER_CRITICAL(R);
    USART_0_rx_elements--;
    EXIT_CRITICAL(R);

    /* Return data */
    return USART_0_rxbuf[tmptail];
}

void USART_0_Write(const uint8_t data)
{
    uint8_t tmphead;

    /* Calculate buffer index */
    tmphead = (USART_0_tx_head + 1) & USART_0_TX_BUFFER_MASK;
    /* Wait for free space in buffer */
    while (USART_0_tx_elements == USART_0_TX_BUFFER_SIZE)
            ;
    /* Store data in buffer */
    USART_0_txbuf[tmphead] = data;
    /* Store new index */
    USART_0_tx_head = tmphead;
    ENTER_CRITICAL(W);
    USART_0_tx_elements++;
    EXIT_CRITICAL(W);
    /* Enable Tx interrupt */
    USART2.CTRLA |= (1 << USART_DREIE_bp);
}

void USART_0_Initialize()
{
    //set baud rate register
    USART2.BAUD = (uint16_t)USART2_BAUD_RATE(9600);
	
    //RXCIE enabled; TXCIE enabled; DREIE disabled; RXSIE enabled; LBME disabled; ABEIE disabled; RS485 OFF; 
    USART2.CTRLA = 0xD0;
	
    //RXEN enabled; TXEN enabled; SFDEN disabled; ODME disabled; RXMODE NORMAL; MPCM disabled; 
    USART2.CTRLB = 0xC0;
	
    //CMODE ASYNCHRONOUS; PMODE DISABLED; SBMODE 1BIT; CHSIZE 8BIT; UDORD disabled; UCPHA disabled; 
    USART2.CTRLC = 0x03;
	
    //DBGCTRL_DBGRUN
    USART2.DBGCTRL = 0x00;
	
    //EVCTRL_IREI
    USART2.EVCTRL = 0x00;
	
    //RXPLCTRL_RXPL
    USART2.RXPLCTRL = 0x00;
	
    //TXPLCTRL_TXPL
    USART2.TXPLCTRL = 0x00;
	

    uint8_t x;

    /* Initialize ringbuffers */
    x = 0;

    USART_0_rx_tail     = x;
    USART_0_rx_head     = x;
    USART_0_rx_elements = x;
    USART_0_tx_tail     = x;
    USART_0_tx_head     = x;
    USART_0_tx_elements = x;

#if defined(__GNUC__)
    stdout = &USART_0_stream;
#endif

}

void USART_0_Enable()
{
    USART2.CTRLB |= USART_RXEN_bm | USART_TXEN_bm;
}

void USART_0_EnableRx()
{
    USART2.CTRLB |= USART_RXEN_bm;
}

void USART_0_EnableTx()
{
    USART2.CTRLB |= USART_TXEN_bm;
}

void USART_0_Disable()
{
    USART2.CTRLB &= ~(USART_RXEN_bm | USART_TXEN_bm);
}

uint8_t USART_0_GetData()
{
    return USART2.RXDATAL;
}