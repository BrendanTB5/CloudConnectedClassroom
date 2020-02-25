/* 
 * File:   nodeTypes.h
 * Author: mulholbn
 *
 * Created on January 19, 2020, 2:11 PM
 */

#ifndef NODETYPES_H
#define	NODETYPES_H

#include "mqtt/mqtt_client.h"

#ifdef	__cplusplus
extern "C" {
#endif
    //This holdes the Node structure, with all the data associated with the Nodes themselves.
    typedef struct node_t {
        uint16_t hash;
        char SSID[32];
        char Password[32];
        bool live;
        char mBuff[256];
        char hBuff[256];
        bool mBuffValid;
        bool hBuffValid;
        uint8_t argC;

    }NODE;

    //This connects a Node to its device literal. This enables easy communication with the cloud MQTT broker without having all the information about the Node.
    typedef struct device_list{
        char type;
        uint16_t ID;
        bool valid;
        NODE* node;
    } dev_t;
    
    //A list of all devices. Originally dynamically allocated, but it broke quite often for some reason.
    extern dev_t devList[32];
    //The current device, allows the HTTP routine and the connection routine to stay in step without a large array search penalty.
    extern char currentDevice;
    //This is antiquated but is kept just in case.
    extern MqttClientContext mqttClientContext;
    extern bool httpInitialized;
    
    extern bool nodeFailed;
    extern char failedDevice;
    //Tells the main kernel loop that the connection loop has finished trying to connect to everything.
    extern bool gatewayFinished;
    
    extern int numTimesAttempted;
    
    void wilc100ConnectLogic(void);



#ifdef	__cplusplus
}
#endif

#endif	/* NODETYPES_H */

