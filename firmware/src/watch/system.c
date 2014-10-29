/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// TODO
// move user / system mode stuff from pwrmgr to here
// 
// Sleep mode:
// RTC (alarm output)
//
// System mode:
// Buzzer
// LEDs
// RTC (square wave output)
//
// User mode:
// System mode plus...
// OLED
// Buttons (other modes only wait for an interrupt)
//
//
// Things that will put the watch into system mode:
// Hour beeps (sleep -> RTC interrupt -> system -> *beep* -> sleep)
//
// Things that will put the watch into user mode:
// Button press
// Alarm
// USB plugin/unplug
//
//
// Reduce clock rate in system mode?
//
// Rename system to lowpower and user to active?
//
// what about stopwatch?
//
// undervolt cutoff?

#include "common.h"

typedef enum
{
	MODE_USER,
	MODE_SYSTEM,
} mode_t;

static mode_t mode;

void system_init()
{
	mode = MODE_USER;
}

void system_update()
{
	
}
