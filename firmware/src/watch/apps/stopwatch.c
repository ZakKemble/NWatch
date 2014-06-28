/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <stdio.h>
#include "typedefs.h"
#include "apps/stopwatch.h"
#include "devices/buttons.h"
#include "display.h"
#include "menu.h"
#include "resources.h"
#include "millis/millis.h"
#include "watchface.h"
#include "watchfaces/ui.h"
#include "pwrmgr.h"
#include "draw.h"
#include "time.h"
#include "animation.h"

typedef enum
{
	STATE_STOPPED,
	STATE_TIMING
} stopwatch_state_t;

static stopwatch_state_t state;
static ulong timer;
static millis_t lastMS;

static bool down(void);
static bool up(void);
static bool select(void);
static display_t draw(void);

void stopwatch_open()
{
	menu_close();

	display_setDrawFunc(draw);
	buttons_setFunc(BTN_SELECT,	select);
	buttons_setFunc(BTN_DOWN,	down);
	buttons_setFunc(BTN_UP,		up);
}

bool stopwatch_active()
{
	return (state == STATE_TIMING);
}

void stopwatch_update()
{
	if(state == STATE_TIMING)
	{
		millis_t now = millis();
		timer += now - lastMS;
		lastMS = now;
		if(timer > 359999999) // 99 hours, 59 mins, 59 secs, 999 ms
			timer = 359999999;
	}
}

static bool down()
{
	timer = 0;
	lastMS = millis();
	return true;
}

static bool up()
{
	if(state == STATE_TIMING)
	{
		state = STATE_STOPPED;
		pwrmgr_setState(PWR_ACTIVE_STOPWATCH, PWR_STATE_NONE);
	}
	else if(state == STATE_STOPPED)
	{
		state = STATE_TIMING;
		pwrmgr_setState(PWR_ACTIVE_STOPWATCH, PWR_STATE_IDLE);
	}
	lastMS = millis();
	return true;
}

static bool select()
{
	animation_start(watchface_loadFace, ANIM_MOVE_OFF);
	return true;
}

#define TIME_POS_X 1
#define TIME_POS_Y 20

static display_t draw()
{
	// Draw battery icon
	drawBattery();

	byte num1;
	byte num2;
	byte num3;
	ulong secs = timer / 1000;

	if(timer < 3600000)
	{
		num3 = (timer % 1000) / 10; // ms
		num2 = secs % 60; // secs
		num1 = secs / 60; // mins
	}
	else
	{
		num3 = secs % 60; // secs
		num2 = (secs / 60) % 60; // mins
		num1 = (secs / 3600); // hours
	}

	s_image img = newImage(1, TIME_POS_Y, midFont[num1 / 10], MIDFONT_WIDTH, MIDFONT_HEIGHT, WHITE, NOINVERT, 0);

	draw_bitmap_s2(&img);

	img.x = 24;
	img.bitmap = midFont[num1 % 10];
	draw_bitmap_s2(&img);

	img.x = 60;
	img.bitmap = midFont[num2 / 10];
	draw_bitmap_s2(&img);

	img.x = 83;
	img.bitmap = midFont[num2 % 10];
	draw_bitmap_s2(&img);

	img.x = 104;
	img.y = 20 - 4 + 12;
	img.width = FONT_SMALL2_WIDTH;
	img.height = FONT_SMALL2_HEIGHT;
	img.bitmap = small2Font[num3 / 10];
	draw_bitmap_s2(&img);

	img.x = 116;
	img.bitmap = small2Font[num3 % 10];
	draw_bitmap_s2(&img);

	img.x = TIME_POS_X + 46 + 2;
	img.y = TIME_POS_Y;
	img.width = FONT_COLON_WIDTH;
	img.height = FONT_COLON_HEIGHT;
	img.bitmap = colon;
	draw_bitmap_s2(&img);

	// Draw time
	char buff[6];
	sprintf_P(buff, PSTR(TIME_FORMAT_SMALL), timeData.hours, timeData.mins);
	draw_string(buff,NOINVERT,48,0);

	return DISPLAY_BUSY;
}
