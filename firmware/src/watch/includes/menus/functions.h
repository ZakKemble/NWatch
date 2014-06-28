/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef FUNCTIONS_H_
#define FUNCTIONS_H_

#include "typedefs.h"

#define MAX_MENU_ITEMS 7

#define MENU_TYPE_STR	0
#define MENU_TYPE_ICON	1

typedef struct{
	byte now;
	byte val;
}s_menuNowSetting;

extern s_menu menuData;
extern const char menuBack[];

display_t menu_draw(void);
void back(void);
void beginAnimation(menu_f);
void beginAnimation2(menu_f);
void setMenuInfo(byte, const char*, byte, menu_f, menu_f, menu_f);
void setMenuOption_P(byte, const char*, const byte*, menu_f);
void setMenuOption(byte, const char*, const byte*, menu_f);
void downOption(void);
void upOption(void);
void doAction(bool);
void setPrevMenuOpen(s_prev_menu*, menu_f);
void setPrevMenuExit(s_prev_menu*, byte);

#endif /* FUNCTIONS_H_ */