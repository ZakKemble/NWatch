/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef BATTERY_H_
#define BATTERY_H_

#include "typedefs.h"

void battery_init(void);
void battery_update(void);
uint battery_voltage(void);

#endif /* BATTERY_H_ */