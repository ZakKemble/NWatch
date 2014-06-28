/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/io.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <stdio.h>
#include "common.h"
#include "drivers/wdt.h"
#include "drivers/spi.h"
#include "drivers/uart.h"
#include "drivers/i2c.h"
#include "devices/oled.h"
#include "devices/ds3231.h"
#include "devices/buttons.h"
#include "devices/battery.h"
#include "devices/buzzer.h"
#include "devices/led.h"
#include "millis/millis.h"
#include "display.h"
#include "time.h"
#include "alarm.h"
#include "pwrmgr.h"
#include "watchface.h"
#include "watchfaces/normal.h"
#include "apps/stopwatch.h"
#include "watchconfig.h"

static void init(void);
#if WDT_ENABLE && WDT_DEBUG
static void resetError(void);
#else
#define resetError() ((void)(0))
#endif
//static void freeRAM(void);

int main(void)
{
	init();

	sei();

	if(wdt_wasReset())
		resetError();

	buzzer_buzz(200, TONE_4KHZ, VOL_UI);
	led_flash(LED_GREEN, 50, 255);

	watchface_setFace(watchface_normal);
	watchface_loadFace();
/*
	while(1)
	{
		buzzer_buzzb(200,TONE_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_4KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_2_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_2KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_4KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_2_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_2KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_3_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_4KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_3KHZ, VOL_UI);
		buzzer_buzzb(250,TONE_2KHZ, VOL_UI);
		buzzer_buzzb(250,TONE_2KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_4KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_4KHZ, VOL_UI);
	}
*/
	while(1)
	{
		bool timeUpt = time_update();
		if(pwrmgr_userActive())
		{
			if(timeUpt && timeData.secs == 0)
				battery_update();
			buttons_update();
		}

		buzzer_update();
		led_update();
		stopwatch_update();

		if(pwrmgr_userActive())
		{
			alarm_update();
			display_update();
		}

//		freeRAM();

		wdt_update();

		pwrmgr_update();
	}
}

static void init()
{
//	OSCCAL = 71;

	clock_prescale_set(CPU_DIV);

//	power_twi_disable();
//	power_usart0_disable();
//	power_timer0_disable();
//	power_timer1_disable();
//	power_timer2_disable();
//	power_adc_disable();

#if !UART_ENABLE
	power_usart0_disable();
#endif

	// Pull-up on unused pins
	pinPullup(D0, PULLUP_ENABLE);
	pinPullup(D1, PULLUP_ENABLE);
	pinPullup(D3, PULLUP_ENABLE);
	pinPullup(D4, PULLUP_ENABLE);

	pinPullup(B7, PULLUP_ENABLE);

#if PIN_DEBUG != PIN_DEBUG_NONE
	pinMode(PIN_DEBUG_PIN, OUTPUT);
#endif

	// Pin change interrupt on USB power sense pin
	PCICR |= _BV(PCIE0);
	PCMSK0 |= _BV(PCINT6);

	// Everything else
	uart_init();
	spi_init();
	i2c_init();
	watchconfig_init();
	led_init();
	buzzer_init();
	battery_init();
	ds3231_init();
	buttons_init();
	millis_init();
	pwrmgr_init();
	time_init();
	alarm_init();
	oled_init();
}

#if WDT_ENABLE && WDT_DEBUG
static void resetError()
{
	while(1)
	{
		wdt_update();
		buzzer_buzzb(200,TONE_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_2_5KHZ, VOL_UI);
		buzzer_buzzb(200,TONE_3KHZ, VOL_UI);
	}
}
#endif

/*
void freeRAM(void)
{
	extern int __heap_start, *__brkval;
	int v;
	int free = (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
	printf("Free RAM : %d\n", free);
}
*/

// USB plugged in uses PCINT0 to wake up
EMPTY_INTERRUPT(PCINT0_vect);

// Buttons use PCINT1 to wake up, alias is used to save a few bytes
ISR(PCINT1_vect, ISR_ALIASOF(PCINT0_vect));