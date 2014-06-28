/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DS3231_DEFS_H_
#define DS3231_DEFS_H_

// I2C addresses
#define DS3231I2C_W			0b11010000
#define DS3231I2C_R			0b11010001

// Control register settings
#define DS3231BIT_EOSC		7
#define DS3231BIT_1HZ		6
#define DS3231BIT_CONV		5
#define DS3231BIT_RS1		4
#define DS3231BIT_RS2		3
#define DS3231BIT_INTCN		2
#define DS3231BIT_A2IE		1
#define DS3231BIT_A1IE		0

// Status register settings
#define DS3231BIT_EN32KHZ	3
#define DS3231BIT_A2F		1
#define DS3231BIT_A1F		0

// Time registers
#define DS3231ADDR_SECS		0x00
#define DS3231ADDR_MINS		0x01
#define DS3231ADDR_HRS		0x02
#define DS3231ADDR_DAY		0x03
#define DS3231ADDR_DATE		0x04
#define DS3231ADDR_MONTH	0x05
#define DS3231ADDR_YEAR		0x06

// Alarm 1 registers
#define DS3231ADDR_ALARM1_SECS	0x07
#define DS3231ADDR_ALARM1_MINS	0x08
#define DS3231ADDR_ALARM1_HRS	0x09
#define DS3231ADDR_ALARM1_DAYDATE	0x0A

// Alarm 2 registers
#define DS3231ADDR_ALARM2_MINS	0x0B
#define DS3231ADDR_ALARM2_HRS	0x0C
#define DS3231ADDR_ALARM2_DAYDATE	0x0D

// Other registers
#define DS3231ADDR_CTRL		0x0E
#define DS3231ADDR_STATUS	0x0F
#define DS3231ADDR_AGING	0x10
#define DS3231ADDR_TEMPH	0x11
#define DS3231ADDR_TEMPL	0x12

#endif /* DS3231_DEFS_H_ */