/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Button press
// 

#include <avr/io.h>
#include <string.h>
#include "common.h"
#include "devices/buttons.h"
#include "devices/buzzer.h"
#include "devices/led.h"
#include "millis/millis.h"
#include "watchconfig.h"

#define BTN_COUNT	3

#define BTN_DEBOUNCE_TIME	40

#define BTN_PRESS_TONE		TONE_4KHZ
#define BTN_PRESS_TONETIME	80

#define BTN_IS_PRESSED	0x0f
#define BTN_NOT_PRESSED	0x03

#define BTN_UP_P		C1
#define BTN_DOWN_P		C2
#define BTN_SELECT_P	C3

#define BTN_INT_ON()	(bit_set(PCICR, PCIE1))
#define BTN_INT_OFF()	(bit_clr(PCICR, PCIE1))

typedef struct {
	millis_t pressedTime;
	byte pressed;
	bool funcDone;
	button_f onPress;
//	bool polled;
}s_button;

static s_button buttons[BTN_COUNT];

static void processButtons(void);
static void processButton(s_button*, bool);

void buttons_init()
{
	pinMode(BTN_UP_P,		INPUT);
	pinMode(BTN_DOWN_P,		INPUT);
	pinMode(BTN_SELECT_P,	INPUT);

	pinPullup(BTN_UP_P,		PULLUP_ENABLE);
	pinPullup(BTN_DOWN_P,	PULLUP_ENABLE);
	pinPullup(BTN_SELECT_P,	PULLUP_ENABLE);

	bits_set(PCMSK1, _BV(PCINT9)|_BV(PCINT10)|_BV(PCINT11));

	BTN_INT_ON();
}

void buttons_update()
{
	static millis8_t lastUpdate;

	millis8_t now = millis();
	if((millis8_t)(now - lastUpdate) >= 10)
	{
		lastUpdate = now;
		processButtons();
	}		
}

static void processButtons()
{
	bool isPressed[3];
	isPressed[BTN_UP]		= !pinRead(BTN_UP_P);
	isPressed[BTN_SELECT]	= !pinRead(BTN_SELECT_P);
	isPressed[BTN_DOWN]		= !pinRead(BTN_DOWN_P);

	LOOPR(BTN_COUNT, i)
		processButton(&buttons[i], isPressed[i]);
}

static void processButton(s_button* button, bool isPressed)
{
	button->pressed <<= 1;
	if(isPressed)
	{
		button->pressed |= 1;
		if(button->pressed >= BTN_IS_PRESSED)
		{
			button->pressedTime = millis(); // this should only be set once!		

			if(!button->funcDone && button->onPress != NULL && button->onPress())
			{
				button->funcDone = true;
				buzzer_buzz(BTN_PRESS_TONETIME, BTN_PRESS_TONE, VOL_UI);
				led_flash(LED_GREEN, LED_FLASH_FAST, LED_BRIGHTNESS_MAX);
			}
		}
	}
	else
	{
		button->pressed <<= 1;
		if(button->pressed <= BTN_NOT_PRESSED)
			button->funcDone = false;
	}	
}

// Set function to run when button pressed
button_f buttons_setFunc(btn_t btn, button_f func)
{
	button_f old = buttons[btn].onPress;
	buttons[btn].onPress = func;
	return old;
}
/*
// Get how long a button has been pressed for
millis_t buttons_pressTime(btn_t btn) // set max press time to 1 min!!!
{
	s_button* button = &buttons[btn];
	if(button->pressed == BTN_NOT_PRESSED)
		return 0;
	return (millis() - button->pressedTime);
}
*/
bool buttons_isActive()
{
	if(!watchConfig.sleepTimeout)
		return true;

	uint timeout = (watchConfig.sleepTimeout * 5) * 1000;

	LOOPR(BTN_COUNT, i)
	{
		if(millis() - buttons[i].pressedTime < timeout)
			return true;
	}

	return false;
}

// Clear button status
void buttons_clear()
{
	LOOPR(BTN_COUNT, i)
	{
		buttons[i].funcDone		= true;
		buttons[i].pressed		= BTN_IS_PRESSED;
		buttons[i].pressedTime	= millis();
	}
}
