/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Fuses for ATmega328/328P
// Internal RC 8MHz 6 CK/14CK + 4.1ms startup
// Serial program (SPI) enabled
// Brown-out at 1.8V
// High:		0xDF
// Low:			0xD2
// Extended:	0xFE

#ifndef CONFIG_H_
#define CONFIG_H_

#define PIN_DEBUG_NONE			0
#define PIN_DEBUG_DRAW			1
#define PIN_DEBUG_SLEEP_IDLE	2
#define PIN_DEBUG_SLEEP_PWRDOWN	3
#define PIN_DEBUG_SPI			4

#define PIN_DEBUG				PIN_DEBUG_NONE

#define PIN_DEBUG_PIN	D4

#endif /* CONFIG_H_ */