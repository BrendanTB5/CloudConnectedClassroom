/* 
 * File:   sensor.h
 * Author: mulholbn
 *
 * Created on January 11, 2020, 6:29 PM
 */

#ifndef SENSOR_H
#define	SENSOR_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdbool.h>
    void setup(void);
    uint16_t SENSORS_getLightValue(void);
    int16_t SENSORS_getTempValue (void);


#ifdef	__cplusplus
}
#endif

#endif	/* SENSOR_H */

