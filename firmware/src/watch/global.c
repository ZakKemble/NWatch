/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

static time_s chargeFinishTime;

void global_init()
{
	pinPullup(CHRG_P, PU_EN);

	// Pin change interrupt on USB power sense pin
#if HW_VERSION == 1
	PCICR |= _BV(PCIE0);
	PCMSK0 |= _BV(PCINT6);
#elif HW_VERSION == 2
	PCICR |= _BV(PCIE0);
	PCMSK0 |= _BV(PCINT7);
#else
	PCICR |= _BV(PCIE2);
	PCMSK2 |= _BV(PCINT19);
#endif

//#warning "remove me!"
//	pinPullup(USB_SENSE_P, PU_EN);

	// Unused pins
#if HW_VERSION == 3
	pinPullup(B6, PU_EN);
	pinPullup(B7, PU_EN);
#else
	pinPullup(D3, PU_EN);
	pinPullup(D4, PU_EN);
#endif
}

void global_update()
{
	static BOOL lastUsbConnected;
	static BOOL lastCharging;
	static millis8_t lastCheck;

	millis8_t now = millis();
	if((millis8_t)(now - lastCheck) < 150)
		return;
	lastCheck = now;
	
	BOOL usbConnected = USB_CONNECTED();
	BOOL charging = CHARGING();

	if(usbConnected != lastUsbConnected)
	{
		lastUsbConnected = usbConnected;
		tune_play(usbConnected ? tuneUsbPlugin : tuneUsbUnplug, VOL_UI, PRIO_UI);
	}

	if(charging != lastCharging)
	{
		lastCharging = charging;
		if(!charging && usbConnected)
		{
			tune_play(tuneUsbCharged, VOL_UI, PRIO_UI);
			
			// save time ONLY WHEN USB UNPLUGGED
			memcpy(&chargeFinishTime, &timeDate, sizeof(time_s));
		}
	}
}

// Dividing by 10 and mod 10 is done a lot in the code.
// Putting them in their own functions makes the code smaller, but slightly slower.
byte div10(byte val)
{
	return val / 10;
}

byte mod10(byte val)
{
	return val % 10;
}
