/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_GAME3

#define TUBE_COUNT 4

typedef struct 
{
	byte x;
	byte y;
}tube_s;

static bool btnExit(void);
static bool btnBounce(void);
static display_t draw(void);

static const uint eepHighscore EEMEM;

static uint highscore;
static uint score;
static bool bounce;
static tube_s tubes[TUBE_COUNT];

static const byte tube_top[] PROGMEM ={
	0xFF,0xD5,0xAB,0xD5,0x83,0x81,0x83,0x81,0x83,0x81,0x83,0x81,0x83,0x81,0x83,0x81,0xD5,0xFF,
};

const const byte tube[] PROGMEM ={
	0xFF,0x55,0xAA,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xAA,0xFF,
};

static const byte thingImg[] PROGMEM ={
	0x40,0xF8,0xEC,0x2C,0x2C,0x38,0xF0,0x10,0xD0,0x30,0xE8,0x4C,0x4C,0x9C,0xF0,
	0x02,0x1F,0x37,0x34,0x34,0x1C,0x0F,0x08,0x0B,0x0C,0x17,0x32,0x32,0x39,0x0F,
};

void game3_start()
{
	menu_close();
	
	srand(millis());

	display_setDrawFunc(draw);
	buttons_setFuncs(NULL, btnBounce, btnExit);
	
	byte a = 0;
	LOOP(TUBE_COUNT, i)
	{
		tubes[i].x = a;
		a += 42;
	}
}

static bool btnExit()
{
	//if(lives == 255)
	//	game3_start();
	//else
		animation_start(display_load, ANIM_MOVE_OFF);
	return true;
}

static bool btnBounce()
{
	bounce = true;
	return true;
}

static display_t draw()
{
	static float y;
	static float yVel;
	static byte tubeOffset;

	if(bounce)
	{
		yVel = -2;
		bounce = false;
	}
	else if((byte)y > 200)
	{
		yVel = 0;
		y = 0;
	}
	else if((byte)y < FRAME_HEIGHT - 8)
	{
		if(yVel < 0)
			yVel += 0.1;
		else
			yVel += 0.06;
	}		
	else
	{
		yVel = 0;
		y = FRAME_HEIGHT - 8;
	}		

	y += yVel;

	image_s img = {16, y, thingImg, 7, 8, WHITE, NOINVERT, 0};
	draw_bitmap_set(&img);
	draw_bitmap_s2(&img);

	img.width = 16;
	img.height = 8;
	LOOP(TUBE_COUNT, i)
	{
		img.bitmap = tube;
		img.x = tubes[i].x;
		
		LOOP(2, h)
		{
			img.y = (tubes[i].y + (8*h)) - 16;
			draw_bitmap_s2(&img);
		}
		
		LOOP(2, h)
		{
			img.y = (tubes[i].y + (8*h) + 48 + 16) - 16;
			draw_bitmap_s2(&img);
		}
		
		img.x -= 1;
		img.width = 18;
		img.bitmap = tube_top;
		img.y = tubes[i].y + (8*2) - 16;
		draw_bitmap_s2(&img);
		img.y = (tubes[i].y + (8*2) + 48 + 16) - 16 - (8*3);
		draw_bitmap_s2(&img);

		tubes[i].x--;
		if(tubes[i].x > 200 && tubes[i].x < 240)
		{
			tubes[i].y = rand() % 16;
			tubes[i].x = FRAME_WIDTH + 16;
		}			
	}
	
	tubeOffset++;
	if(tubeOffset > 25)
		tubeOffset = 0;

	return DISPLAY_BUSY;
}	

#endif
