/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// Battery
// Battery is connected to a P-MOSFET then to a voltage divider. This is so we don't have a load of current being wasted through the voltage divider all the time.
// Polling based, interrupts not needed here since a conversion only takes ~500us and is only done every-so-often

#include <avr/io.h>
#include <avr/power.h>
#include <util/delay.h>
#include "common.h"
#include "devices/battery.h"

#define MOSFET			C0
#define enable_adc()	(pinWrite(MOSFET, HIGH))
#define disable_adc()	(pinWrite(MOSFET, LOW))

static uint voltage;

void battery_init()
{
	// MOSFET pin
	pinMode(MOSFET, OUTPUT);
	disable_adc();

	// ADC registers
	ADCSRA = _BV(ADPS2)|_BV(ADPS1)|_BV(ADPS0); // 128 prescaler = 62.5KHz @ 8MHz
	ADMUX = _BV(REFS0)|_BV(REFS1)|6; // 1.1V internal ref, ADC channel 6
	ACSR = _BV(ACD); // Disable analog comparator

	// Disable ADC until later
	power_adc_disable();
}

// Update voltage
void battery_update()
{
	// Enable P-MOSFET
	enable_adc();

	// Wait a bit for MOSFET to turn on
	delay_us(200);

	// Start ADC
	power_adc_enable();
	bits_set(ADCSRA, _BV(ADEN)|_BV(ADSC));

	// Wait for ADC completion
	loop_until_bit_is_clear(ADCSRA, ADSC);

	// Convert ADC value to voltage
	voltage = ((ulong)ADC * 4200) / 1023;

	// Disable ADC
	bit_clr(ADCSRA, ADEN);
	power_adc_disable();

	// Turn off MOSFET
	disable_adc();
}

// Get voltage
uint battery_voltage()
{
	return voltage;
}