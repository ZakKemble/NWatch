/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef GLOBAL_H_
#define GLOBAL_H_

#include "common.h"

#define RTC_INT()		(!pinRead(D2))
#define USB_CONNECTED()	(pinRead(B6))
#define CHARGING()		(!pinRead(B7))

#endif /* GLOBAL_H_ */