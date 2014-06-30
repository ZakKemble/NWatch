/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Buzzer
// Timer1 is used for buzzing

#include "common.h"

static byte buzzLen;
static millis8_t startTime;
static buzzFinish_f onFinish;
static tonePrio_t prio;

static void stop(void);

void buzzer_init()
{
	LOAD_BITS(TCCR1A, WGM11);
	LOAD_BITS(TCCR1B, CS10, WGM13);
	OCR1A = 512;
	ICR1 = 512 * 2;
	power_timer1_disable();

	pinMode(B1, OUTPUT);
	pinWrite(B1, LOW);
}

// Non-blocking buzz
void buzzer_buzz(byte len, tone_t tone, vol_t volType, tonePrio_t _prio, buzzFinish_f _onFinish)
{
	if(_prio < prio)
		return;
	else if(tone == TONE_STOP)
	{
		stop();
		return;
	}

	// Tell power manager that we are busy buzzing
	pwrmgr_setState(PWR_ACTIVE_BUZZER, PWR_STATE_IDLE);

	prio = _prio;
	onFinish = _onFinish;
	buzzLen = len;
	startTime = millis();

	// Silent pause tone
	if(tone == TONE_PAUSE)
	{
		CLEAR_BITS(TCCR1A, COM1A1, COM1A0);
		power_timer1_disable();
		return;
	}

	// Workout volume
	uint ocr;
	byte vol;

	switch(volType)
	{
		case VOL_UI:
			vol = appConfig.volUI;
			break;
		case VOL_ALARM:
			vol = appConfig.volAlarm;
			break;
		case VOL_HOUR:
			vol = appConfig.volHour;
			break;
		default:
			vol = 2;
			break;
	}

	// Pulse width goes down as freq goes up
	// This keeps power consumption the same for all frequencies, but volume goes down as freq goes up

	vol--;
	if(vol > 2)
		return;

	uint icr = tone * 8;
	ocr = icr - (icr / (32>>vol));

	power_timer1_enable();
	TIFR1 = 0;
	SET_BITS(TIMSK1, TOIE1);
	TCNT1 = 0;
	OCR1A = ocr;
	ICR1 = icr;
	//SET_BITS(TCCR1A, COM1A1, COM1A0);
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
		stop();

		if(onFinish != NULL)
			onFinish();
	}
}

static void stop()
{
	CLEAR_BITS(TCCR1A, COM1A1, COM1A0);
	power_timer1_disable();
	buzzLen = 0;
	prio = PRIO_MIN;

	pwrmgr_setState(PWR_ACTIVE_BUZZER, PWR_STATE_NONE);
}

// Sometimes the buzzer kind of 'pops' from a bad waveform output (the first HIGH pulse is too long)
// Here we wait until a timer overflow and then turn on the timer output
// It still sometimes pops, but much less so than turning on the timer output in buzzer_buzz()
ISR(TIMER1_OVF_vect)
{
	SET_BITS(TCCR1A, COM1A1, COM1A0);
	TIMSK1 = 0;
}
