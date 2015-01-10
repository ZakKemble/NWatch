/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_STOPWATCH

typedef enum
{
	STATE_STOPPED = 0,
	STATE_TIMING
} stopwatch_state_t;

static stopwatch_state_t state;
static ulong timer;
static millis_t lastMS;

static bool btnReset(void);
static bool btnStartStop(void);
static bool btnExit(void);
static display_t draw(void);

void stopwatch_open()
{
	menu_close();

	display_setDrawFunc(draw);
	buttons_setFuncs(btnReset, btnStartStop, btnExit);
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

static bool btnReset()
{
	timer = 0;
	lastMS = millis();
	return true;
}

static bool btnStartStop()
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

static bool btnExit()
{
	animation_start(display_load, ANIM_MOVE_OFF);
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

	draw_bitmap(1, TIME_POS_Y, midFont[div10(num1)], MIDFONT_WIDTH, MIDFONT_HEIGHT, NOINVERT, 0);
	draw_bitmap(24, TIME_POS_Y, midFont[mod10(num1)], MIDFONT_WIDTH, MIDFONT_HEIGHT, NOINVERT, 0);
	draw_bitmap(60, TIME_POS_Y, midFont[div10(num2)], MIDFONT_WIDTH, MIDFONT_HEIGHT, NOINVERT, 0);
	draw_bitmap(83, TIME_POS_Y, midFont[mod10(num2)], MIDFONT_WIDTH, MIDFONT_HEIGHT, NOINVERT, 0);
	draw_bitmap(104, 20 - 4 + 12, small2Font[div10(num3)], FONT_SMALL2_WIDTH, FONT_SMALL2_HEIGHT, NOINVERT, 0);
	draw_bitmap(116, 20 - 4 + 12, small2Font[mod10(num3)], FONT_SMALL2_WIDTH, FONT_SMALL2_HEIGHT, NOINVERT, 0);
	draw_bitmap(TIME_POS_X + 46 + 2, TIME_POS_Y, colon, FONT_COLON_WIDTH, FONT_COLON_HEIGHT, NOINVERT, 0);

	// Draw time
	draw_string(time_timeStr(), NOINVERT, 48, 0);

	return DISPLAY_BUSY;
}

#endif
