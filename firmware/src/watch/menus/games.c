/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT	2

static prev_menu_s prevMenuData;

static void mSelect(void);
static void itemLoader(byte);

void mGamesOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_STR, PSTR(STR_GAMESMENU));
	setMenuFuncs(MENUFUNC_NEXT, MENUFUNC_PREV, mSelect, itemLoader);

	setPrevMenuOpen(&prevMenuData, mGamesOpen);
	
	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData);
	doAction(true);
}

static void itemLoader(byte num)
{
	UNUSED(num);
#if COMPILE_GAME1
	setMenuOption_P(0, PSTR(GAME1_NAME), NULL, game1_start);
#endif
#if COMPILE_GAME2
	setMenuOption_P(1, PSTR(GAME2_NAME), NULL, game2_start);
#endif
#if COMPILE_GAME3
	setMenuOption_P(2, PSTR(GAME3_NAME), NULL, game3_start);
#endif
	addBackOption();
}
