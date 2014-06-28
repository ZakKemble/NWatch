/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include "typedefs.h"
#include "apps/torch.h"
#include "devices/buttons.h"
#include "display.h"
#include "menu.h"
#include "resources.h"
#include "devices/oled.h"
#include "devices/led.h"
#include "millis/millis.h"
#include "watchconfig.h"
#include "watchface.h"

static uint strobe;

static bool down(void);
static bool select(void);
static display_t draw(void);

void torch_open()
{
	menu_close();

	strobe = 0;
	display_setDrawFunc(draw);
	buttons_setFunc(BTN_SELECT,	select);
	buttons_setFunc(BTN_DOWN,	down);
	buttons_setFunc(BTN_UP,		down);
}

static bool down()
{
	oled_setInvert(watchConfig.invert);
	watchface_loadFace();
	return true;
}

static bool select()
{
	if(strobe < 500)
		strobe += 50 * ((strobe / 50) + 1);
	else
		strobe = 0;
	return true;
}

static display_t draw()
{
	static bool invert;
	static millis_t lastStrobe;

	if(strobe)
	{
		millis_t now = millis();
		if(now - lastStrobe >= strobe)
		{
			lastStrobe = now;
			invert = !invert;
			oled_setInvert(invert);
			led_flash(invert ? LED_GREEN : LED_RED, 20, 255);
		}
		return DISPLAY_BUSY;
	}

	oled_setInvert(true);
	led_flash(LED_GREEN, 100, 255);
	led_flash(LED_RED, 100, 255);

	return DISPLAY_DONE;
}