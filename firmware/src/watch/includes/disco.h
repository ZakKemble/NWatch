/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DISCO_H_
#define DISCO_H_

#define DISCOMEM_RAM 0
#define DISCOMEM_EEPROM 1
#define DISCOMEM_PROGMEM 2

// Where to store tunes
#define DISCOMEM_TYPE	DISCOMEM_EEPROM

#if DISCOMEM_TYPE == DISCOMEM_PROGMEM
#define DISCOMEM PROGMEM
#elif DISCOMEM_TYPE == DISCOMEM_EEPROM
#define DISCOMEM EEMEM
#else
#define DISCOMEM 
#endif

typedef uint disco_t;

// move to LED
typedef enum
{
	/*PRIO_MIN = 0,
	PRIO_LOW = 1,
	PRIO_NML = 2,
	PRIO_HIGH = 3,*/
	PRIO_MAX2 = 255
} discoPrio_t;

void disco_play(const disco_t*, discoPrio_t);
void disco_stop(discoPrio_t);

#endif /* DISCO_H_ */
