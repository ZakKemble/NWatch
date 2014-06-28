/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define BTN_DEBOUNCE_TIME	40

#define BTN_PRESS_TONE		TONE_4KHZ
#define BTN_PRESS_TONETIME	80

#define BTN_IS_PRESSED	4//0x0f
#define BTN_NOT_PRESSED	2//0x03

#define BTN_1_P	C1
#define BTN_2_P	C2
#define BTN_3_P	C3

#define BTN_INT_ON()	(SET_BITS(PCICR, PCIE1))
#define BTN_INT_OFF()	(CLEAR_BITS(PCICR, PCIE1))

typedef struct {
	millis_t pressedTime;
	byte pressed;
	bool funcDone;
	button_f onPress;
	const uint* tune;
//	bool polled;
}s_button;

static s_button buttons[BTN_COUNT];

static void processButtons(void);
static void processButton(s_button*, bool);
static byte bitCount(byte);

void buttons_init()
{
	pinMode(BTN_1_P,	INPUT);
	pinMode(BTN_2_P,	INPUT);
	pinMode(BTN_3_P,	INPUT);

	pinPullup(BTN_1_P,	PU_EN);
	pinPullup(BTN_2_P,	PU_EN);
	pinPullup(BTN_3_P,	PU_EN);

	SET_BITS(PCMSK1, PCINT9, PCINT10, PCINT11);
	
	buttons[BTN_1].tune = tuneBtn1;
	buttons[BTN_2].tune = tuneBtn2;
	buttons[BTN_3].tune = tuneBtn3;
	
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
	bool isPressed[BTN_COUNT];
	isPressed[BTN_1] = !pinRead(BTN_1_P);
	isPressed[BTN_2] = !pinRead(BTN_2_P);
	isPressed[BTN_3] = !pinRead(BTN_3_P);

	LOOPR(BTN_COUNT, i)
		processButton(&buttons[i], isPressed[i]);
}

static void processButton(s_button* button, bool isPressed)
{
	button->pressed <<= 1;
	if(isPressed)
	{
		button->pressed |= 1;
		//if(button->pressed >= BTN_IS_PRESSED)
		if(bitCount(button->pressed) >= BTN_IS_PRESSED)
		{
			button->pressedTime = millis(); // this should only be set once!		

			if(!button->funcDone && button->onPress != NULL && button->onPress())
			{
				button->funcDone = true;
				//buzzer_buzz(BTN_PRESS_TONETIME, BTN_PRESS_TONE, VOL_UI, NULL);
				tune_play(button->tune, VOL_UI, PRIO_UI);
				led_flash(LED_GREEN, LED_FLASH_FAST, LED_BRIGHTNESS_MAX);
			}
		}
	}
	else
	{
		button->pressed <<= 1;
		//if(button->pressed <= BTN_NOT_PRESSED)
		if(bitCount(button->pressed) <= BTN_NOT_PRESSED)
			button->funcDone = false;
	}	
}

// CHANGE TO JUST A NORMAL COUNTER
static byte bitCount(byte val)
{
	byte count = 0;
	for(;val;val >>= 1)
		count += val & 1;
	return count;
}

// Set function to run when button pressed
button_f buttons_setFunc(btn_t btn, button_f func)
{
	button_f old = buttons[btn].onPress;
	buttons[btn].onPress = func;
	return old;
}

void buttons_setFuncs(button_f btn1, button_f btn2, button_f btn3)
{
	buttons[BTN_1].onPress = btn1;
	buttons[BTN_2].onPress = btn2;
	buttons[BTN_3].onPress = btn3;
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
	if(!appConfig.sleepTimeout)
		return true;

	uint timeout = (appConfig.sleepTimeout * 5) * 1000;

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
