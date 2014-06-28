/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef BUTTONS_H_
#define BUTTONS_H_

#include "typedefs.h"
#include "millis/millis.h"

typedef enum
{
	BTN_UP = 0,
	BTN_SELECT = 1,
	BTN_DOWN = 2
} btn_t;

void buttons_init(void);
void buttons_update(void);
button_f buttons_setFunc(btn_t, button_f);
//millis_t buttons_pressTime(btn_t);
bool buttons_isActive(void);
void buttons_clear(void);

#endif /* BUTTONS_H_ */