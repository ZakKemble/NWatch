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
#include "display.h"
#include "devices/oled.h"
#include "millis/millis.h"
#include "draw.h"
#include "resources.h"
#include "menu.h"
#include "time.h"
#include "watchface.h"
#include "animation.h"
#include "pwrmgr.h"
#include "watchconfig.h"

// Frame rate when stuff is happening
// If this is too low then animations will be jerky
// Animations are also frame rate based instead of time based, adjusting frame rate will also effect animation speed
#define FRAME_RATE		60

// Frame rate when nothing is going on
// If this is too low then the interface will seem a bit slow to respond
#define FRAME_RATE_LOW		25

#define FRAME_RATE_MS		((byte)(1000 / FRAME_RATE))
#define FRAME_RATE_LOW_MS	((byte)(1000 / FRAME_RATE_LOW))

typedef struct{
	byte height;
	bool closing;
	bool doingLine;
	byte lineWidth;
	byte lineClosing;
	bool active;
}s_crt_anim;

/*
static const byte crtdot[] PROGMEM ={
	0x18,0x3C,0x7E,0x7E,0x3C,0x18,
};

static s_image crtdotImage = {(FRAME_WIDTH / 2) - 3, (FRAME_HEIGHT / 2) - 4, crtdot, 6, 8, WHITE, NOINVERT, 0};
*/

static s_crt_anim crt_anim;
static draw_f drawFunc;

static void crt_animation(void);

void display_update()
{
	static millis8_t lastDraw; // Time of last draw
	static byte fpsMs; // Milliseconds to next draw

	// Limit frame rate
	millis8_t now = millis();
	if((millis8_t)(now - lastDraw) < fpsMs)
	{
		pwrmgr_setState(PWR_ACTIVE_DISPLAY, PWR_STATE_IDLE);
		return;
	}
	lastDraw = now;

	debugPin_draw(HIGH);

	// Update animations
	animation_update();

	display_t busy = DISPLAY_DONE;

	// Draw stuff
	if(drawFunc != NULL && (crt_anim.active || (!crt_anim.active && !crt_anim.closing)))
		busy = drawFunc();

	// Do CRT animation
	if(crt_anim.active)
		crt_animation();

	busy = busy || crt_anim.active || animation_active();

	if(watchConfig.showFPS)
	{
		// Work out & draw FPS, add 2ms (actually 2.31ms) for time it takes to send to OLED, clear buffer etc
		// This is only approximate
		millis8_t end = millis() + ((byte)(16000000UL / F_CPU)) + 1;
		char buff[5];
		sprintf_P(buff, PSTR("%u"), (uint)(1000 / (millis8_t)(end - now)));
		draw_string(buff,false,107,56);
	}

	// End drawing, send to OLED
	draw_end();

	debugPin_draw(LOW);

	// Decide framerate
	if(busy == DISPLAY_DONE)
	{
		pwrmgr_setState(PWR_ACTIVE_DISPLAY, PWR_STATE_NONE);
		fpsMs = FRAME_RATE_LOW_MS;
	}
	else
	{
		pwrmgr_setState(PWR_ACTIVE_DISPLAY, PWR_STATE_IDLE);
		fpsMs = FRAME_RATE_MS;
	}
}

draw_f display_setDrawFunc(draw_f func)
{
	draw_f old = drawFunc;
	drawFunc = func;
	return old;
}

void display_startCRTAnim(bool open)
{
	if(!watchConfig.animations)
	{
		crt_anim.active = false;
		return;
	}

	if(open)
	{
		crt_anim.closing = false;
		crt_anim.doingLine = true;
		crt_anim.height = FRAME_HEIGHT / 2;
		crt_anim.lineClosing = false;
		crt_anim.lineWidth = 0;
	}
	else
	{
		crt_anim.closing = true;
		crt_anim.doingLine = false;
		crt_anim.height = 0;
		crt_anim.lineClosing = true;
		crt_anim.lineWidth = FRAME_WIDTH;
	}
	crt_anim.active = true;
}

static void crt_animation()
{
	if(!crt_anim.doingLine)
	{
		if(crt_anim.closing)
			crt_anim.height += 3;
		else
			crt_anim.height -= 3;

		if(crt_anim.height >= FRAME_HEIGHT / 2)
		{
			if(crt_anim.closing)
			{
				crt_anim.height = FRAME_HEIGHT / 2;
				crt_anim.doingLine = true;
			}
			else
			{
				crt_anim.height = 0;
				crt_anim.active = false;
			}				
			//crt_anim.closing = !crt_anim.closing;
		}
	}
	else
	{
		if(crt_anim.lineClosing)
			crt_anim.lineWidth -= 6;
		else
			crt_anim.lineWidth += 10;

		if(crt_anim.lineWidth >= FRAME_WIDTH)
		{
			if(crt_anim.lineClosing)
				crt_anim.lineWidth = 0;
			else
				crt_anim.lineWidth = FRAME_WIDTH;

			if(!crt_anim.lineClosing)
				crt_anim.doingLine = false;

			if(crt_anim.lineClosing && crt_anim.closing)
				crt_anim.active = false;

			crt_anim.lineClosing = !crt_anim.lineClosing;
		}
	}

	// Full rows
	byte rows = crt_anim.height / 8;
	LOOP(rows, i)
	{
		memset(&oledBuffer[i * FRAME_WIDTH], 0, FRAME_WIDTH);
		memset(&oledBuffer[FRAME_BUFFER_SIZE - FRAME_WIDTH - (i * FRAME_WIDTH)], 0, FRAME_WIDTH);
	}

	byte prows = crt_anim.height % 8;
	if(prows) // Partial rows & edge line
	{
		uint idxStart = rows * FRAME_WIDTH;
		uint idxEnd = ((FRAME_BUFFER_SIZE - 1) - idxStart);
		byte a = (255<<prows);
		byte b = (255>>prows);
		byte c = (1<<prows);
		byte d = (128>>prows);
		LOOP(FRAME_WIDTH, i)
		{
			oledBuffer[idxStart] = (oledBuffer[idxStart] & a) | c;
			idxStart++;

			oledBuffer[idxEnd] = (oledBuffer[idxEnd] & b) | d;
			idxEnd--;
		}
	}
	else if(crt_anim.height) // Edge line
	{
		uint pos = ((byte)(FRAME_WIDTH - crt_anim.lineWidth) / 2) + ((byte)(FRAME_HEIGHT - crt_anim.height) / 8) * FRAME_WIDTH;
		memset(&oledBuffer[pos], 0x01, crt_anim.lineWidth);

		if(crt_anim.height != FRAME_HEIGHT / 2)
		{
			pos = (crt_anim.height / 8) * FRAME_WIDTH;
			LOOPR(FRAME_WIDTH, x)
				oledBuffer[pos + x] |= 0x01;
		}		
	}

//	if(crt_anim.doingLine && crt_anim.closing)
//		draw_bitmap_s2(&crtdotImage);
}
