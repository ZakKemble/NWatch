/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DS1307_DEFS_H_
#define DS1307_DEFS_H_

// I2C addresses
#define DS1307_I2C		0b11010000

#define DS1307_BIT_CH		7

// Control register settings
#define DS1307_BIT_OUT		7
#define DS1307_BIT_SQWE		4
#define DS1307_BIT_RS1		1
#define DS1307_BIT_RS0		0

// Time registers
#define DS1307_ADDR_SECS	0x00
#define DS1307_ADDR_MINS	0x01
#define DS1307_ADDR_HRS		0x02
#define DS1307_ADDR_DAY		0x03
#define DS1307_ADDR_DATE	0x04
#define DS1307_ADDR_MONTH	0x05
#define DS1307_ADDR_YEAR	0x06

// Other registers
#define DS1307_ADDR_CTRL	0x07

#endif /* DS1307_DEFS_H_ */
