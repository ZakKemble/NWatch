/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// LED control

#include "common.h"

// Registers and stuff
#define RED_OCR		OCR0A
#define RED_COM		COM0A1
#define RED_PIN		PD6
#define GREEN_OCR	OCR0B
#define GREEN_COM	COM0B1
#define GREEN_PIN	PD5

typedef struct {
	byte flashLen;			// How long to light up for
	millis8_t startTime;	// 
}led_s;

static led_s ledRed;
static led_s ledGreen;

static void flash(led_s*, byte, byte, volatile byte*, byte, byte);
static BOOL update(led_s*, byte, byte);

void led_init()
{
	// Setup timers
	LOAD_BITS(TCCR0A, WGM01, WGM00);
	LOAD_BITS(TCCR0B, CS01, CS00);
	power_timer0_disable();

	// Setup pins
	pinMode(D5, OUTPUT);
	pinMode(D6, OUTPUT);
	pinWrite(D5, LOW);
	pinWrite(D6, LOW);
}

static void flash(led_s* led, byte len, byte brightness, volatile byte* ocr, byte com, byte pin)
{
	led->flashLen = len;
	led->startTime = millis();

	if(brightness == 255 || brightness == 0)
	{
		TCCR0A &= ~com;
		brightness == 255 ? (PORTD |= pin) : (PORTD &= ~pin);
	}
	else
	{
		power_timer0_enable();
		TCCR0A |= com;
		*ocr = brightness;
	}
}

void led_flash(led_t led, byte len, byte brightness)
{
	switch(led)
	{
		case LED_RED:
			flash(&ledRed, len, brightness, &RED_OCR, _BV(RED_COM), _BV(RED_PIN));
			break;
		case LED_GREEN:
			flash(&ledGreen, len, brightness, &GREEN_OCR, _BV(GREEN_COM), _BV(GREEN_PIN));
			break;
		default:
			break;
	}

	pwrmgr_setState(PWR_ACTIVE_LED, PWR_STATE_IDLE);
}

// Is an LED on?
BOOL led_flashing()
{
	return ledRed.flashLen || ledGreen.flashLen;
}

static BOOL update(led_s* led, byte com, byte pin)
{
	if(led->flashLen && (millis8_t)(millis() - led->startTime) >= led->flashLen)
	{
		PORTD &= pin;
		TCCR0A &= com;
		led->flashLen = 0;
	}

	return led->flashLen;
}

void led_update()
{
	BOOL red = update(&ledRed, (byte)~_BV(RED_COM), ~_BV(RED_PIN));
	BOOL green = update(&ledGreen, ~_BV(GREEN_COM), ~_BV(GREEN_PIN));

	if(!red && !green)
	{
		// Timer no longer in use, disable
		power_timer0_disable();
		pwrmgr_setState(PWR_ACTIVE_LED, PWR_STATE_NONE);
	}
}

// Turn off LEDs
void led_stop()
{
	led_flash(LED_GREEN, 0, 0);
	led_flash(LED_RED, 0, 0);
	led_update();
}
