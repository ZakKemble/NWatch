/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef COMMON_H_
#define COMMON_H_

#include "config.h"
#include "util.h"
#include "typedefs.h"
#include "debug.h"

#include <avr/io.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/sleep.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <util/twi.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include "drivers/wdt.h"
#include "drivers/spi.h"
#include "drivers/uart.h"
#include "drivers/i2c.h"
#include "drivers/rtc.h"
#include "drivers/adc.h"
#include "devices/oled.h"
#include "devices/buttons.h"
#include "devices/battery.h"
#include "devices/buzzer.h"
#include "devices/led.h"
#include "devices/mcp7940x.h"
#include "devices/ds1307.h"
#include "devices/ds3231.h"
#include "millis/millis.h"
#include "menus/functions.h"
#include "menus/alarms.h"
#include "menus/diag.h"
#include "menus/display.h"
#include "menus/games.h"
#include "menus/timedate.h"
#include "menus/settings.h"
#include "menus/sleep.h"
#include "menus/sound.h"
#include "menus/main.h"
#include "games/game1.h"
#include "games/game2.h"
#include "apps/stopwatch.h"
#include "apps/torch.h"
#include "apps/screenshot.h"
#include "watchfaces/normal.h"
#include "watchfaces/lowbatt.h"
#include "watchfaces/ui.h"

#include "system.h"
#include "global.h"
#include "display.h"
#include "time.h"
#include "alarm.h"
#include "pwrmgr.h"
#include "appconfig.h"
#include "disco.h"
#include "tune.h"
#include "animation.h"
#include "draw.h"
#include "menu.h"

#include "lang.h"
#include "tunes.h"
#include "discos.h"
#include "resources.h"

#endif /* COMMON_H_ */
