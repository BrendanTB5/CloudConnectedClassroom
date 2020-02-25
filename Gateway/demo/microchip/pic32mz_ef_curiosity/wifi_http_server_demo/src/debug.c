/**
 * @file debug.c
 * @brief Debugging facilities
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
 * @author Oryx Embedded SARL (www.oryx-embedded.com)
 * @version 1.9.4
 **/

//Dependencies
#include <p32xxxx.h>
#include "debug.h"


/**
 * @brief Debug UART initialization
 * @param[in] baudrate UART baudrate
 **/

void debugInit(uint32_t baudrate)
{
#if 0
   //Disable analog pad on U1TX (AN33/RD15)
   ANSELDCLR = _ANSELD_ANSD15_MASK;

   //Remap U1TX to RPD15
   RPD15R = 1;
   //Remap U1RX to RPD10
   U1RXR = 3;

   //Configure UART1 (8 bits, no parity, 1 stop bit)
   U1STA = 0;
   //Enable high-speed mode
   U1MODE = _U1MODE_BRGH_MASK;
   //Set baudrate
   U1BRG = ((40000000 / 4) / baudrate) - 1;

   //Enable UART1
   U1MODESET = _U1MODE_ON_MASK;
   //Enable transmitter and receiver
   U1STASET = _U1STA_UTXEN_MASK | _U1STA_URXEN_MASK;
#else
   //Disable analog pad on U2TX (AN21/RC2)
   ANSELCCLR = _ANSELC_ANSC2_MASK;
   //Disable analog pad on U2RX (AN20/RC3)
   ANSELCCLR = _ANSELC_ANSC3_MASK;

   //Remap U2TX to RPC2
   RPC2R = 2;
   //Remap U2RX to RPC3
   U2RXR = 12;

   //Configure UART2 (8 bits, no parity, 1 stop bit)
   U2STA = 0;
   //Enable high-speed mode
   U2MODE = _U2MODE_BRGH_MASK;
   //Set baudrate
   U2BRG = ((40000000 / 4) / baudrate) - 1;

   //Enable UART2
   U2MODESET = _U2MODE_ON_MASK;
   //Enable transmitter and receiver
   U2STASET = _U2STA_UTXEN_MASK | _U2STA_URXEN_MASK;
#endif
}


/**
 * @brief Display the contents of an array
 * @param[in] stream Pointer to a FILE object that identifies an output stream
 * @param[in] prepend String to prepend to the left of each line
 * @param[in] data Pointer to the data array
 * @param[in] length Number of bytes to display
 **/

void debugDisplayArray(FILE *stream,
   const char_t *prepend, const void *data, size_t length)
{
   uint_t i;

   for(i = 0; i < length; i++)
   {
      //Beginning of a new line?
      if((i % 16) == 0)
         fprintf(stream, "%s", prepend);
      //Display current data byte
      fprintf(stream, "%02" PRIX8 " ", *((uint8_t *) data + i));
      //End of current line?
      if((i % 16) == 15 || i == (length - 1))
         fprintf(stream, "\r\n");
   }
}


/**
 * @brief Write character to stream
 * @param[in] c The character to be written
 * @param[in] stream Pointer to a FILE object that identifies an output stream
 * @return On success, the character written is returned. If a writing
 *   error occurs, EOF is returned
 **/

int_t fputc(int_t c, FILE *stream)
{
   //Standard output or error output?
   if(stream == stdout || stream == stderr)
   {
#if 0
      //Wait for the transmitter to be ready
      while(U1STA & _U1STA_UTXBF_MASK);
      //Send character
      U1TXREG = c;
      //Wait for the transfer to complete
      while(!(U1STA & _U1STA_TRMT_MASK));
#else
      //Wait for the transmitter to be ready
      while(U2STA & _U2STA_UTXBF_MASK);
      //Send character
      U2TXREG = c;
      //Wait for the transfer to complete
      while(!(U2STA & _U2STA_TRMT_MASK));
#endif

      //On success, the character written is returned
      return c;
   }
   //Unknown output?
   else
   {
      //If a writing error occurs, EOF is returned
      return EOF;
   }
}
