/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

static void init(void);
#if WDT_ENABLE && WDT_DEBUG
static void resetError(void);
#else
#define resetError() (EMPTY_FUNC)
#endif
//static void configError(void);
//static void freeRAM(void);

int main(void)
{
	init();

	sei();

	if(wdt_wasReset())
		resetError();
	//else if(!appconfig_check())
	//	configError();

	// Startup buzz and flash
	buzzer_buzz(200, TONE_4KHZ, VOL_UI, PRIO_UI, NULL);
	led_flash(LED_GREEN, 50, 255);

	// Set watchface
	display_set(watchface_normal);
	display_load();
	
	while(1)
	{
		time_update();
		if(pwrmgr_userActive())
		{
			battery_update();
			buttons_update();
		}

		buzzer_update();
		led_update();
#if COMPILE_STOPWATCH
		stopwatch_update();
#endif
		global_update();

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

#if CPU_DIV != clock_div_1
	clock_prescale_set(CPU_DIV);
#endif

//	power_twi_disable();
//	power_usart0_disable();
//	power_timer0_disable();
//	power_timer1_disable();
//	power_timer2_disable();
//	power_adc_disable();

#if PIN_DEBUG != PIN_DEBUG_NONE
	pinMode(PIN_DEBUG_PIN, OUTPUT);
#endif

	// Everything else
	global_init();
	uart_init();
	spi_init();
	i2c_init();
	adc_init();
	appconfig_init();
	led_init();
	buzzer_init();
	battery_init();
	buttons_init();
	millis_init();
	rtc_init();
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
static void configError()
{
	oled_power(OLED_PWR_OFF);
	while(1)
	{
		if(!led_flashing())
		{
			delay(300);
			led_flash(LED_RED, 50, 255);
		}
		led_update();
	}
}
*/
/*
void freeRAM(void)
{
	extern int __heap_start, *__brkval;
	int v;
	int free = (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
	printf("Free RAM : %d\n", free);
}
*/

// USB plugged in uses PCINT0/2 to wake up
// Buttons use PCINT1 to wake up, alias is used to save a few bytes
#if HW_VERSION == 3
EMPTY_INTERRUPT(PCINT2_vect);
ISR(PCINT1_vect, ISR_ALIASOF(PCINT2_vect));
#else
EMPTY_INTERRUPT(PCINT0_vect);
ISR(PCINT1_vect, ISR_ALIASOF(PCINT0_vect));
#endif
