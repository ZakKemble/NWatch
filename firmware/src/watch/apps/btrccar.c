/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_BTRCCAR

static bool btn1(void);
static bool btn2(void);
static bool btn3(void);
static display_t draw(void);

static byte btData;

void btrccar_open()
{
	menu_close();

	display_setDrawFunc(draw);
	buttons_setFuncs(btn1, btn2, btn3);
	
	btData = 0;
}

static bool btn1()
{
	btData |= _BV(0);
	return false;
}

static bool btn2()
{
	btData |= _BV(1);
	return false;
}

static bool btn3()
{
	animation_start(display_load, ANIM_MOVE_OFF);
	return true;
}

static display_t draw()
{
	uart_put(btData);
	btData = 0;

	return DISPLAY_BUSY;
}	

#endif
