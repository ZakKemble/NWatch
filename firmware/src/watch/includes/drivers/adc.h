/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef ADC_H_
#define ADC_H_

#define ADC_MAX 1023 // Max ADC value (10 bit = 1023)

void adc_init(void);
uint adc_read(byte);

#endif /* ADC_H_ */
