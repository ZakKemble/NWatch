/*
 * Project: N|Watch
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

// Hardware version
// 1 = PCB 1.0 - 1.1
// 2 = PCB 1.2
// 3 = PCB 1.3 - 1.4
#define HW_VERSION	3

// Firmware version
#define FW_VERSION	"1.1 141115" // maybe use some __DATE__ __TIME__ stuff?

// Language
// 0 = English
// 1 = German (not done)
// 2 = Russian
#define LANGUAGE 0

// OLED Controller chip
// OLED_CONTROLLER_SSD1306
// OLED_CONTROLLER_SH1106
#define OLED_CONTROLLER OLED_CONTROLLER_SSD1306

// Compile options
#define COMPILE_GAME1 1 // Breakout
#define COMPILE_GAME2 1 // Car dodge
#define COMPILE_GAME3 0 // Flappy thing (not finished)
#define COMPILE_ANIMATIONS 1
#define COMPILE_STOPWATCH 1
#define COMPILE_TORCH 1
#define COMPILE_BTRCCAR 0
#define COMPILE_UART 0
#define COMPILE_SCREENSHOT 0


#define COMPILE_I2C 1


//#define UART_BAUD 76800
//#define ALARM_COUNT 10

// Only DS3231 is working at the moment
#define RTC_SRC_INTERNAL	0
#define RTC_SRC_DS3231		1
#define RTC_SRC_DS1307		2
#define RTC_SRC_MCP7940X	3

#define RTC_SRC RTC_SRC_DS3231


#define DEBUG_MSGS				0

#define PIN_DEBUG_NONE			0
#define PIN_DEBUG_DRAW			1
#define PIN_DEBUG_SLEEP_IDLE	2
#define PIN_DEBUG_SLEEP_PWRDOWN	3
#define PIN_DEBUG_SPI			4

#define PIN_DEBUG				PIN_DEBUG_NONE

#if HW_VERSION == 3
#define PIN_DEBUG_PIN	B6
#else
#define PIN_DEBUG_PIN	D4
#endif

#endif /* CONFIG_H_ */
