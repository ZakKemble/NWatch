/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <stdio.h>
#include <string.h>
#include "common.h"
#include "watchfaces/normal.h"
#include "draw.h"
#include "resources.h"
#include "display.h"
#include "devices/oled.h"
#include "time.h"
#include "alarm.h"
#include "global.h"
#include "watchconfig.h"
#include "devices/buttons.h"
#include "menu.h"
#include "watchface.h"
#include "watchfaces/ui.h"
#include "animation.h"
#include "apps/stopwatch.h"

static display_t draw(void);
static void drawDate(void);
static bool animateIcon(s_image*, bool);
static display_t ticker(void);
static void drawTickerNum(byte, byte, byte, byte, bool, const byte*, byte, byte, byte);

static s_image usbImage = {0, FRAME_HEIGHT, usbIcon, 16, 8, WHITE, NOINVERT, 0};
static s_image chargeImage = {0, FRAME_HEIGHT, chargeIcon, 8, 8, WHITE, NOINVERT, 0};

void watchface_normal()
{
	display_setDrawFunc(draw);
	buttons_setFunc(BTN_SELECT, menu_select);
	buttons_setFunc(BTN_DOWN, NULL);
	buttons_setFunc(BTN_UP, NULL);
	animation_start(NULL, ANIM_MOVE_ON);
}

static display_t draw()
{
	// Draw date
	drawDate();

	// Draw time animated
	display_t busy = ticker();

	// Draw battery icon
	drawBattery();

	byte x = 20;

	// Draw USB icon
	usbImage.x = x;
	if(animateIcon(&usbImage, USB_CONNECTED()))
		x += 20;
	
	// Draw charging icon
	chargeImage.x = x;
	if(animateIcon(&chargeImage, CHARGING()))
		x += 12;

	// 
	if(stopwatch_active())
	{
		s_image stopwatchIcon = {x, FRAME_HEIGHT - 8, stopwatch, 8, 8, WHITE, NOINVERT, 0};
		draw_bitmap_s2(&stopwatchIcon);
		//draw_string("X", NOINVERT, x, FRAME_HEIGHT - 7);
		x += 12;
	}

	// Draw next alarm
	s_alarm* nextAlarm = alarm_getNext();
	if(nextAlarm != NULL)
	{
		char buff[8];
		//sprintf_P(buff, PSTR("%02hhu:%02hhu%c"), nextAlarm->hour, nextAlarm->min, alarm_getDowChar(alarm_getNextDay()));
		sprintf_P(buff, PSTR("%02hhu:%02hhu"), nextAlarm->hour, nextAlarm->min);
		draw_string(buff,false,x,FRAME_HEIGHT - 8);
		x += 35;

		s_image dowIcon = {x, FRAME_HEIGHT - 8, dowImg[alarm_getNextDay()], 8, 8, WHITE, NOINVERT, 0};
		draw_bitmap_s2(&dowIcon);

//		x += 9;
	}

	return busy;
}

static void drawDate()
{
	// Get day string
	char day[4];
	strcpy_P(day, days[timeData.day]);

	// Get month string
	char month[4];
	strcpy_P(month, months[timeData.month]);

	// Draw date
	char buff[16];
	sprintf_P(buff, PSTR(DATE_FORMAT), day, timeData.date, month, timeData.year);
	draw_string(buff,false,12,0);
}

static bool animateIcon(s_image* image, bool active)
{
	if(active || (!active && image->y < FRAME_HEIGHT))
	{
		if(active && image->y > FRAME_HEIGHT - 8)
			image->y -= 1;
		else if(!active && image->y < FRAME_HEIGHT)
			image->y += 1;
		draw_bitmap_s2(image);
		return true;
	}
	return false;
}

#define TIME_POS_X	1
#define TIME_POS_Y	20
#define TICKER_GAP	4

static display_t ticker()
{
	static byte yPos;
	static byte yPos_secs;
	static bool moving = false;
	static bool moving2[5];
	static s_time timeDataLast;

	if(watchConfig.animations)
	{
		if(timeData.secs != timeDataLast.secs)
		{
			yPos = 0;
			yPos_secs = 0;
			moving = true;

			moving2[0] = (timeData.hours / 10) != (timeDataLast.hours / 10);
			moving2[1] = (timeData.hours % 10) != (timeDataLast.hours % 10);
			moving2[2] = (timeData.mins / 10) != (timeDataLast.mins / 10);
			moving2[3] = (timeData.mins % 10) != (timeDataLast.mins % 10);
			moving2[4] = (timeData.secs / 10) != (timeDataLast.secs / 10);
		
			memcpy(&timeDataLast, &timeData, sizeof(s_time));
		}

		if(moving)
		{
			if(yPos <= 3)
				yPos++;
			else if(yPos <= 6)
				yPos += 3;
			else if(yPos <= 16)
				yPos += 5;
			else if(yPos <= 22)
				yPos += 3;
			else if(yPos <= 24 + TICKER_GAP)
				yPos++;

			if(yPos >= MIDFONT_HEIGHT + TICKER_GAP)
				yPos = 255;

			if(yPos_secs <= 1)
				yPos_secs++;
			else if(yPos_secs <= 13)
				yPos_secs += 3;
			else if(yPos_secs <= 16 + TICKER_GAP)
				yPos_secs++;

			if(yPos_secs >= FONT_SMALL2_HEIGHT + TICKER_GAP)
				yPos_secs = 255;

			if(yPos_secs > FONT_SMALL2_HEIGHT + TICKER_GAP && yPos > MIDFONT_HEIGHT + TICKER_GAP)
			{
				yPos = 0;
				yPos_secs = 0;
				moving = false;
				memset(moving2, false, sizeof(moving2));
			}
		}
	}
	else
	{
		yPos = 0;
		yPos_secs = 0;
		moving = false;
		memset(moving2, false, sizeof(moving2));
	}

	// Draw seconds
	drawTickerNum(104, 28, timeData.secs / 10, 5, moving2[4], (byte*)&small2Font, FONT_SMALL2_WIDTH, FONT_SMALL2_HEIGHT, yPos_secs);
	drawTickerNum(116, 28, timeData.secs % 10, 9, moving, (byte*)&small2Font, FONT_SMALL2_WIDTH, FONT_SMALL2_HEIGHT, yPos_secs);

	// Draw minutes
	drawTickerNum(60, TIME_POS_Y, timeData.mins / 10, 5, moving2[2], (byte*)&midFont, MIDFONT_WIDTH, MIDFONT_HEIGHT, yPos);
	drawTickerNum(83, TIME_POS_Y, timeData.mins % 10, 9, moving2[3], (byte*)&midFont, MIDFONT_WIDTH, MIDFONT_HEIGHT, yPos);

	// Draw hours
	drawTickerNum(1, TIME_POS_Y, timeData.hours / 10, 5, moving2[0], (byte*)&midFont, MIDFONT_WIDTH, MIDFONT_HEIGHT, yPos);
	drawTickerNum(24, TIME_POS_Y, timeData.hours % 10, 9, moving2[1], (byte*)&midFont, MIDFONT_WIDTH, MIDFONT_HEIGHT, yPos);

	if(time_halfSecond())
	{
		// FIX: struct uses heap, should use stack
		byte fix = FONT_COLON_WIDTH;
		draw_bitmap_s2(&newImage(TIME_POS_X + 46 + 2, TIME_POS_Y, colon, fix, FONT_COLON_HEIGHT, WHITE, false, 0));
	}		

	return (moving ? DISPLAY_BUSY : DISPLAY_DONE);
}

static void drawTickerNum(byte x, byte y, byte val, byte maxValue, bool moving, const byte* font, byte w, byte h, byte yPos)
{
	byte arraySize = (w * h) / 8;
	if(yPos == 255)
		yPos = 0;

	s_image img = newImage(x, y, &font[val * arraySize], w, h, WHITE, false, 0);

	if(!moving || yPos == 0)
	{
		draw_bitmap_s2(&img);
		return;
	}

	byte prev = val - 1;
	if(prev == 255)
		prev = maxValue;

	img.offsetY = yPos - h - TICKER_GAP;
	draw_bitmap_s2(&img);

	img.offsetY = yPos;
	img.bitmap = &font[prev * arraySize];
	draw_bitmap_s2(&img);
}