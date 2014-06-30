/*
 * Project: Lightweight millisecond tracking library
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/millisecond-tracking-library-for-avr/
 */

#ifndef MILLIS_CONFIG_H_
#define MILLIS_CONFIG_H_

typedef unsigned char millis8_t;

/**
* Milliseconds data type \n
* Data type				- Max time span			- Memory used \n
* unsigned char			- 255 milliseconds		- 1 byte \n
* unsigned int			- 65.54 seconds			- 2 bytes \n
* unsigned long			- 49.71 days			- 4 bytes \n
* unsigned long long	- 584.9 million years	- 8 bytes
*/
#define MILLIS_DATATYPE	unsigned int

// Which timer to use
// MILLIS_TIMER0
// MILLIS_TIMER1
// MILLIS_TIMER2
#define MILLIS_TIMER	MILLIS_TIMER2 /**< Which timer to use. */

//
#define MILLIS_INLINE	0

#endif /* MILLIS_CONFIG_H_ */
