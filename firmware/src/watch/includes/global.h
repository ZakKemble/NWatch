/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef GLOBAL_H_
#define GLOBAL_H_

#define RTC_INT_P	D2

#if HW_VERSION == 1
#define USB_SENSE_P	B6
#define CHRG_P		B7
#elif HW_VERSION == 2
#define USB_SENSE_P	B7
#define CHRG_P		B6
#else
#define USB_SENSE_P	D3
#define CHRG_P		D4
#endif

#define RTC_HALFSEC()	(!pinRead(RTC_INT_P))
#define USB_CONNECTED()	(pinRead(USB_SENSE_P))
#define CHARGING()		(!pinRead(CHRG_P))

void global_init(void);
void global_update(void);
byte div10(byte);
byte mod10(byte);

#endif /* GLOBAL_H_ */
