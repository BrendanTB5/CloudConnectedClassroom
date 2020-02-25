# Cloud Connected Classroom

## Gateway





### How to Compile

To compile the program, you need to open the following file in MPLABX.

> Gateway/demo/microchip/pic32mz_ef_curiosity/wifi_http_server_demo/mplabx

This file has been proved to compile in MPLABX v5.3.0 using the XC32 compiler v2.30



### How to Run

This program requires the first generation  PIC32 MZ EF Curiosity. The board utilizes an PIC32MZ2048EFM100 microprocessor. This has not been verified to run on the second generation of the board, and since it uses a different layout and microprocessor will not run most likely. The software requires the left mikrobus slot to be populated by the Wi-Fi 7 click module, the right mikrobus slot to be populated with the UART to USB Click, and the Ethernet adapter to be populated.

### How to Connect to AWS

The current program requires the AWS gateway database to populated with the device's MAC address. This can be found by anyone with access to DHCP logs for the local network. The Client ID must be set to a AWS device name, and the client certificate must match one connected to that Client ID. Ensure that the endpoint url is changed to the given IoT Core endpoint url.

### How to Read Documentation

The project is documented using Doxygen. Click on the link to index.html, if that is not available open the file at

> Gateway/Documentation/html/index.html

Most of the documentation that is needed for our changes is in main.c This can be searched for, and it will give in depth descriptions of the code we have made. Hope you have as much fun with this as I did.

