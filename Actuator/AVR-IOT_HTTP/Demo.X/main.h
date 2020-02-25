/* 
 * File:   main.h
 * Author: thebester5
 *
 * Created on November 3, 2019, 5:00 PM
 */

#ifndef MAIN_H
#define	MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif
    
    
#include <stdint.h>

typedef enum {
	NOT_READY = 0, /*!< Not ready. */
	STORAGE_READY = 0x01, /*!< Storage is ready. */
	WIFI_CONNECTED = 0x02, /*!< Wi-Fi is connected. */
	GET_REQUESTED = 0x04, /*!< GET request is sent. */
	DOWNLOADING = 0x08, /*!< Running to download. */
	COMPLETED = 0x10, /*!< Download completed. */
	CANCELED = 0x20 /*!< Download canceled. */
} download_state;

#define MAIN_BUFFER_MAX_SIZE                 (1446)
#define MAIN_BUFFER_MAX_SIZE                 (1446)

#define IPV4_BYTE(val, index)                ((val >> (index * 8)) & 0xFF)


#ifdef	__cplusplus
}
#endif

#endif	/* MAIN_H */

