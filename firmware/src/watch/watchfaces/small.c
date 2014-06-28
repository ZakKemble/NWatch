/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <stdio.h>
#include <string.h>
#include "common.h"
#include "watchfaces/small.h"
#include "draw.h"
#include "resources.h"
#include "display.h"
#include "time.h"
#include "devices/buttons.h"
#include "watchface.h"

static display_t draw(void);

void watchface_small(void)
{
	display_setDrawFunc(draw);
	buttons_setFunc(BTN_SELECT, NULL);
	buttons_setFunc(BTN_DOWN, NULL);
	buttons_setFunc(BTN_UP, NULL);
}

static display_t draw(void)
{
	char buff[6];
	sprintf_P(buff, PSTR(TIME_FORMAT_SMALL), timeData.hours, timeData.mins);
	draw_string(buff,false,48,28);
	return DISPLAY_DONE;
}