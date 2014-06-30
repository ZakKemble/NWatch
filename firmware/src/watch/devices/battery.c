/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Battery
// Battery is connected to a P-MOSFET then to a voltage divider. This is so we don't have a load of current being wasted through the voltage divider all the time.
// Polling based, interrupts not needed here since a conversion only takes ~500us and is only done every-so-often

#include "common.h"

#define ADC_CHANNEL			6
#define DIVIDER				C0
#define enable_divider()	(pinWrite(DIVIDER, HIGH))
#define disable_divider()	(pinWrite(DIVIDER, LOW))

#define MAX_VOLTAGE	4200 // Max battery voltage

#if HW_VERSION == 1
#define R1			7500 // R1 resistance
#define R2			2700 // R2 resistance
#define VREF		1100 // Reference voltage (Internal)
#else
#define R1			10000 // R1 resistance
#define R2			10000 // R2 resistance
#define VREF		2500 // Reference voltage (VCC)
#endif

#define MAX_ADCVAL	((uint16_t)((((R2 / (float)(R1 + R2)) * MAX_VOLTAGE) / VREF) * ADC_MAX))

/*
#if MAX_ADCVAL > ADC_MAX
//	#undef MAX_ADCVAL
//	#define MAX_ADCVAL ADCMAX
	#warning "MAX_ADCVAL > ADCMAX"
#endif
*/

// Resolution = MAX_VOLTAGE / MAX_ADCVAL
// Resolution = 4.88mV

static uint voltage;
static byte nextUpdate;
static bool doneUpdate;

void battery_init()
{
	// MOSFET pin
	pinMode(DIVIDER, OUTPUT);
	disable_divider();
}

// Set next update to happen in a few seconds
void battery_setUpdate(byte secs)
{
	nextUpdate = timeData.secs + secs;
	if(nextUpdate >= 60)
		nextUpdate -= 60;
	doneUpdate = false;
}

// Update voltage
void battery_update()
{
	if(timeData.secs != nextUpdate)
	{
		doneUpdate = false;
		return;
	}
	else if(doneUpdate)
		return;

	doneUpdate = true;
	nextUpdate = 0;

	// Enable P-MOSFET
	enable_divider();

	// Wait a bit for things to turn on
	delay_us(200);

	// Convert ADC value to voltage
	uint adc = adc_read(ADC_CHANNEL);
	voltage = ((ulong)adc * MAX_VOLTAGE) / MAX_ADCVAL;

	// Turn off MOSFET
	disable_divider();
}

// Get voltage
uint battery_voltage()
{
	return voltage;
}
