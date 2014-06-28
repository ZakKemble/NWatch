/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Deals with sleeping and waking up

#include <avr/sleep.h>
#include <avr/interrupt.h>
#include "common.h"
#include "pwrmgr.h"
#include "devices/oled.h"
#include "devices/buttons.h"
#include "devices/buzzer.h"
#include "display.h"
#include "time.h"
#include "watchconfig.h"
#include "menu.h"

typedef enum
{
	SYS_AWAKE,
	SYS_CRTANIM,
	SYS_SLEEP
} sys_t;

typedef enum
{
	USER_ACTIVE,
	USER_INACTIVE
} user_t;

static pwr_state_t active[PWR_ACTIVE_COUNT];
static sys_t systemState;
static user_t userState;

static void userWake(void);
static void userSleep(void);

void pwrmgr_init()
{
	systemState = SYS_AWAKE;
	userState = USER_ACTIVE;
	set_sleep_mode(SLEEP_MODE_IDLE);
}

void pwrmgr_update()
{
	bool idle = false;
	LOOPR(PWR_ACTIVE_COUNT, i)
	{
		if(active[i] == PWR_STATE_BSY) // Something busy, no sleep stuff
			return;
		else if(active[i] == PWR_STATE_IDLE)
			idle = true;
	}

	bool buttonsActive = buttons_isActive();

	if(idle || buttonsActive)
	{
		if(systemState == SYS_CRTANIM && buttonsActive) // Cancel CRT anim if a button is pressed
		{
			display_startCRTAnim(DISPLAY_CRTANIM_OPEN);
			systemState = SYS_AWAKE;
		}
		else // Idle sleep mode
		{
			debugPin_sleepIdle(HIGH);
			sleep_mode();
			debugPin_sleepIdle(LOW);
		}
	}
	else
	{
		if(systemState == SYS_AWAKE) // Begin CRT anim
		{
			systemState = SYS_CRTANIM;
			display_startCRTAnim(DISPLAY_CRTANIM_CLOSE);
		}
		else if(systemState == SYS_CRTANIM)
		{
			// Shutdown

			if(userState == USER_ACTIVE)
				userSleep();

			systemState = SYS_SLEEP;
			set_sleep_mode(SLEEP_MODE_PWR_DOWN);

			time_sleep();
			debugPin_sleepPowerDown(HIGH);

			// need to make sure no interrupts fired here!

			cli();
			sleep_enable();
			sleep_bod_disable();
			sei();
			sleep_cpu();
			sleep_disable();

			debugPin_sleepPowerDown(LOW);

			systemState = SYS_AWAKE;

			if(time_wake() != RTCWAKE_SYSTEM) // Woken by button press, USB plugged in or by RTC user alarm
				userWake();

			set_sleep_mode(SLEEP_MODE_IDLE);
		}
	}
}

void pwrmgr_setState(pwr_active_t thing, pwr_state_t state)
{
	active[thing] = state;
}

bool pwrmgr_userActive()
{
	return userState == USER_ACTIVE;
}

static void userWake()
{
	userState = USER_ACTIVE;
	buttons_clear();
	display_startCRTAnim(DISPLAY_CRTANIM_OPEN);
	oled_power(OLED_PWR_ON);
}

static void userSleep()
{
	userState = USER_INACTIVE;
	oled_power(OLED_PWR_OFF);
}
