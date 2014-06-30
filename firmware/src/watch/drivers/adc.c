/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if HW_VERSION == 1
#define ADC_REF (_BV(REFS0)|_BV(REFS1)) // 1.1V internal ref
#else
#define ADC_REF (_BV(REFS0)) // External VCC ref
#endif

void adc_init()
{
	// ADC registers
	LOAD_BITS(ADCSRA, ADPS2, ADPS1, ADPS0); // 128 prescaler = 62.5KHz @ 8MHz
	ADMUX = ADC_REF; 
	LOAD_BITS(ACSR, ACD); // Disable analog comparator

	// Disable ADC until later
	power_adc_disable();
}

uint adc_read(byte channel)
{
	// Enable ADC
	power_adc_enable();

	ADMUX = ADC_REF|(channel & 0x0F);

	// Start conversion
	SET_BITS(ADCSRA, ADEN, ADSC);
	
	//
	// go to ADC sleep
	//

	// Wait for ADC completion
	loop_until_bit_is_clear(ADCSRA, ADSC);

	uint val = ADC;

	// Disable ADC
	CLEAR_BITS(ADCSRA, ADEN);
	power_adc_disable();

	return val;
}
