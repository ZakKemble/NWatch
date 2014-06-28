/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Buzzer
// Timer1 is used for buzzing

#include <avr/io.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "common.h"
#include "devices/buzzer.h"
#include "millis/millis.h"
#include "watchconfig.h"
#include "pwrmgr.h"

static byte buzzLen;
static millis8_t startTime;

void buzzer_init()
{
	TCCR1A = _BV(WGM11);
	TCCR1B = _BV(CS10)|_BV(WGM13);
	OCR1A = 512;
	ICR1 = 512 * 2;
	power_timer1_disable();

	pinMode(B1, OUTPUT);
	pinWrite(B1, LOW);
}

// Non-blocking buzz
void buzzer_buzz(byte len, tone_t tone, vol_t volType)
{
	// Workout volume
	uint ocr;
	byte vol;

	switch(volType)
	{
		case VOL_UI:
			vol = watchConfig.volUI;
			break;
		case VOL_ALARM:
			vol = watchConfig.volAlarm;
			break;
		case VOL_HOUR:
			vol = watchConfig.volHour;
			break;
		default:
			vol = 2;
			break;
	}

	switch(vol)
	{
		case 1:
			ocr = (tone * 2) - (tone / 16);
			break;
		case 2:
			ocr = (tone * 2) - (tone / 8);
			break;
		case 3:
			ocr = (tone * 2) - (tone / 4);
			break;
		default:
			return;
	}

	buzzLen = len;
	startTime = millis();
	power_timer1_enable();
	TIFR1 = 0;
	TIMSK1 |= _BV(TOIE1);
	TCNT1 = 0;
	OCR1A = ocr;
	ICR1 = tone * 2;

	// Tell power manager that we are busy buzzing
	pwrmgr_setState(PWR_ACTIVE_BUZZER, PWR_STATE_IDLE);
}
/*
#include "devices/led.h"

void buzzer_buzzb(byte len, tone_t tone, vol_t volType)
{
	(void)(volType);

	led_flash(LED_GREEN, 50, 255);
	led_flash(LED_RED, 50, 255);

	power_timer1_enable();
	TCCR1A |= _BV(COM1A1)|_BV(COM1A0);

//	static uint vol = 0;
//	vol++;
//	if(vol > 790)
//		vol = 1;
//	OCR1A = vol;

//	if(vol > 3)
//		vol = 0;
//	if(vol == 0)
//		OCR1A = tone; // normal
//	else if(vol == 1)
//		OCR1A = (tone * 2) - 50; // quiet
//	else if(vol == 2)
//		OCR1A = (tone / 2); // loud
//	else if(vol == 3)
//		OCR1A = (tone / 4); // loader (acually quiter)

	OCR1A = (tone * 2) - 100;
	ICR1 = tone * 2;
	while(len--)
	{
		delay(1);
		led_update();
	}		
//	delay(20);
	TCCR1A &= ~(_BV(COM1A1)|_BV(COM1A0));
	power_timer1_disable();
}
*/
// Are we buzzing?
bool buzzer_buzzing()
{
	return buzzLen;
}

// See if its time to stop buzzing
void buzzer_update()
{
	if(buzzLen && (millis8_t)(millis() - startTime) >= buzzLen)
	{
		bits_clr(TCCR1A, _BV(COM1A1)|_BV(COM1A0));
		power_timer1_disable();
		buzzLen = 0;

		pwrmgr_setState(PWR_ACTIVE_BUZZER, PWR_STATE_NONE);
	}	
}

// Sometimes the buzzer kind of 'pops' from a bad waveform output (the first HIGH pulse is too long)
// Here we wait until a timer overflow and then turn on the timer output
// It still sometimes pops, but much less so than turning on the timer output in buzzer_buzz()
ISR(TIMER1_OVF_vect)
{
	TCCR1A |= _BV(COM1A1)|_BV(COM1A0);
	TIMSK1 = 0;
}