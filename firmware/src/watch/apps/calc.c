/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

/*
static bool down(void);
static bool up(void);
static bool select(void);
static byte draw(void);*/
/*
static const char calcChars[] PROGMEM = {
	'7',
	'8',
	'9',
	'/',
	'4',
	'5',
	'6',
	'*',
	'1',
	'2',
	'3',
	'-',
	'0',
	'.',
	'=',
	'+'
};

static char calc[19];
static byte calcIdx;
static char answer[19];

static byte selectIdx;
*/
/*void calcOpen()
{
	close();

	display_setDrawFunc(draw);
	buttons_setFunc(BTN_SELECT,	select);
	buttons_setFunc(BTN_DOWN,	down);
	buttons_setFunc(BTN_UP,		up);
}
*/
/*
static bool down()
{
//	selectIdx--;
//	if(selectIdx > 15)
//		selectIdx = 15;
	return true;
}

static bool up()
{
//	selectIdx++;
//	if(selectIdx > 15)
//		selectIdx = 0;
	return true;
}
*/
/*
static bool select()
{
//	setPrevMenuExit(&prevMenuData, 1);

//	doAction();
	watchface_loadFace();*/
/*
	if(selectIdx == 14)
	{
		int num1;
		int num2;
		int answerVal;
		char operation;
		sscanf(calc, "%d%c%d", &num1, &operation, &num2);
		if (operation == '+')
			answerVal = num1 + num2;
		else if (operation == '-')
			answerVal = num1 - num2;
		else if (operation == '*')
			answerVal = num1 * num2;
		else if (operation == '/')
			answerVal = num1 / num2;

		snprintf_P(answer, sizeof(answer), PSTR("%d"), answerVal);
	}
	else if(calcIdx < 18)
		calc[calcIdx++] = pgm_read_byte(calcChars + selectIdx);
*/
/*
	return true;
}
*/
/*
static byte draw()
{
*/
/*	draw_string(calc, false, 0, 0);
	draw_string(answer, false, 0, 8);
	
	byte idx = 0;
	for(byte x=0;x<4;x++)
	{
		for(byte y=0;y<4;y++)
		{
			char buff[2] = {pgm_read_byte(calcChars + idx), 0x00};
			draw_string(buff, (idx == selectIdx), (8 * y) + 8, 24 + (x * 10));
			idx++;
		}
	}
*/
/*	return 1;
}
*/
