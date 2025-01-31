/**
 * @file dhcp_common.c
 * @brief Definitions common to DHCP client and server
 *
 * @section License
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 *
 * Copyright (C) 2010-2019 Oryx Embedded SARL. All rights reserved.
 *
 * This file is part of CycloneTCP Open.
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
 * @version 1.9.6
 **/

//Switch to the appropriate trace level
#define TRACE_LEVEL DHCP_TRACE_LEVEL

//Dependencies
#include "core/net.h"
#include "dhcp/dhcp_common.h"
#include "debug.h"

//Check TCP/IP stack configuration
#if (IPV4_SUPPORT == ENABLED)


/**
 * @brief Append an option to a DHCP message
 * @param[in] message Pointer to the DHCP message
 * @param[in] optionCode Option code
 * @param[in] optionValue Option value
 * @param[in] optionLen Length of the option value
 **/

void dhcpAddOption(DhcpMessage *message, uint8_t optionCode,
   const void *optionValue, size_t optionLen)
{
   size_t n;
   DhcpOption *option;

   //Point to the very first option
   n = 0;

   //Parse DHCP options
   while(1)
   {
      //Point to the current option
      option = (DhcpOption *) (message->options + n);

      //End option detected?
      if(option->code == DHCP_OPT_END)
         break;

      //Jump to next the next option
      n += sizeof(DhcpOption) + option->length;
   }

   //Sanity check
   if(optionLen <= UINT8_MAX)
   {
      //Point to the buffer where the option is to be written
      option = (DhcpOption *) (message->options + n);

      //Option code
      option->code = optionCode;
      //Option length
      option->length = (uint8_t) optionLen;
      //Option value
      memcpy(option->value, optionValue, optionLen);

      //Jump to next the next option
      n += sizeof(DhcpOption) + option->length;

      //Point to the buffer where the option is to be written
      option = (DhcpOption *) (message->options + n);

      //Always terminate the options field with 255
      option->code = DHCP_OPT_END;
   }
}


/**
 * @brief Find the specified option in a DHCP message
 * @param[in] message Pointer to the DHCP message
 * @param[in] length Length of the message
 * @param[in] optionCode Code of the option to find
 * @return If the specified option is found, a pointer to the corresponding
 *   option is returned. Otherwise NULL pointer is returned
 **/

DhcpOption *dhcpGetOption(const DhcpMessage *message,
   size_t length, uint8_t optionCode)
{
   uint_t i;
   DhcpOption *option;

   //Make sure the DHCP header is valid
   if(length < sizeof(DhcpMessage))
      return NULL;
   //Get the length of the options field
   length -= sizeof(DhcpMessage);

   //Parse DHCP options
   for(i = 0; i < length; i++)
   {
      //Point to the current option
      option = (DhcpOption *) (message->options + i);

      //Pad option detected?
      if(option->code == DHCP_OPT_PAD)
         continue;
      //End option detected?
      if(option->code == DHCP_OPT_END)
         break;
      //Check option length
      if((i + 1) >= length || (i + 1 + option->length) >= length)
         break;

      //Current option code matches the specified one?
      if(option->code == optionCode)
         return option;

      //Jump to the next option
      i += option->length + 1;
   }

   //Specified option code not found
   return NULL;
}

#endif
