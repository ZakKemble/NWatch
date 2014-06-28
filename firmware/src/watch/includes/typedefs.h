/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef TYPEDEFS_H_
#define TYPEDEFS_H_

#include <stdbool.h>

#define BLACK	0
#define WHITE	1
#define INVERT	2
#define NOINVERT	false
//#define INVERT		true

typedef unsigned char byte;
typedef unsigned long ulong;
typedef unsigned int uint;

//typedef byte state_t;

typedef enum
{
	DISPLAY_DONE,
	DISPLAY_BUSY,
//	DISPLAY_TOOFAST
} display_t;

typedef struct {
	byte secs;
	byte mins;
	byte hours;
	byte day;
	byte date;
	byte month;
	byte year;
}s_time;

typedef struct{
	byte hour;
	byte min;
	union {
		byte days;
		struct{
			bool mon:1;
			bool tues:1;
			bool wed:1;
			bool thurs:1;
			bool fri:1;
			bool sat:1;
			bool sun:1;
			bool enabled:1;
		};
	};
}s_alarm;

typedef struct{
	byte sleepMode;
	byte sleepBrightness;
	byte sleepTimeout;
	//byte brightness;
	bool invert;
	bool animations;
	byte clockface;
	bool display180;
	bool showFPS;
	union {
		byte volumes;
		struct{
			byte volUI:2;
			byte volAlarm:2;
			byte volHour:2;
			byte brightness:2;
			};
		};
}s_watchconfig;

typedef display_t (*draw_f)(void);
typedef void (*watchFace_f)(void);
typedef bool (*button_f)(void);
typedef void (*menu_f)(void);

//struct s;
//typedef void (*menuFunc)(struct s*);
//typedef void (*menuFuncNoArg)(void);

typedef struct{
	char name[21];
	const byte* icon;
	menu_f actionFunc;
}s_menuOption;

typedef struct{
	byte selected;
	byte scroll;
	byte optionCount;
	bool isOpen;
	char title[19];
	byte menuType;
	menu_f downFunc;
	menu_f upFunc;
	menu_f selectFunc;
	draw_f drawFunc;
	menu_f prevMenu;
	s_menuOption* options;
}s_menu;

typedef struct{
	byte lastSelected;
	menu_f last;
}s_prev_menu;

typedef struct{
	bool active;
	byte offsetY;
	void (*animOnComplete)(void);
	bool goingOffScreen;
}s_anim;

typedef struct{
	byte x;
	byte y;
	const byte* bitmap;
	byte width;
	byte height;
	byte foreColour;
	bool invert;
	byte offsetY;
}s_image;

#endif /* TYPEDEFS_H_ */