/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef MCP7940X_DEFS_H_
#define MCP7940X_DEFS_H_

// I2C addresses
#define MCP7940X_I2C			0b11011110

// Oscillator enable bit
#define MCP7940X_BIT_ST		7

// Control register settings
#define MCP7940X_BIT_OUT		7
#define MCP7940X_BIT_SQWE	6
#define MCP7940X_BIT_ALM1	5
#define MCP7940X_BIT_ALM0	4
#define MCP7940X_BIT_EXTOSC	3
#define MCP7940X_BIT_RS2		2
#define MCP7940X_BIT_RS1		1
#define MCP7940X_BIT_RS0		0

// Time registers
#define MCP7940X_ADDR_SECS		0x00
#define MCP7940X_ADDR_MINS		0x01
#define MCP7940X_ADDR_HRS		0x02
#define MCP7940X_ADDR_DAY		0x03
#define MCP7940X_ADDR_DATE		0x04
#define MCP7940X_ADDR_MONTH		0x05
#define MCP7940X_ADDR_YEAR		0x06

// Other registers
#define MCP7940X_ADDR_CTRL			0x07
#define MCP7940X_ADDR_CALIBRATION	0x08

#endif /* MCP7940X_DEFS_H_ */
