/*
 * Project: Lightweight millisecond tracking library
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/millisecond-tracking-library-for-avr/
 */

#ifndef MILLIS_H_
#define MILLIS_H_

#include "millis_config.h"

typedef unsigned char millis8_t;
typedef MILLIS_DATATYPE millis_t;

#define millis() millis_get()

void millis_init(void);
millis_t millis_get(void);

#endif /* MILLIS_H_ */
