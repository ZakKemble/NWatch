/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <string.h>
#include "typedefs.h"
#include "menus/games.h"
#include "menu.h"
#include "menus/functions.h"
#include "games/game1.h"
#include "games/game2.h"

#define OPTION_COUNT	3
#define OPTION_EXIT		OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);

void mGamesOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("     < GAMES >"), MENU_TYPE_STR, mSelect, upOption, downOption);

	setMenuOption_P(0, PSTR("Breakout"), NULL, game1_start);
	setMenuOption_P(1, PSTR("Car dodge"), NULL, game2_start);
	setMenuOption_P(OPTION_EXIT, menuBack, NULL, back);

	setPrevMenuOpen(&prevMenuData, mGamesOpen);
	
	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(true);
}
