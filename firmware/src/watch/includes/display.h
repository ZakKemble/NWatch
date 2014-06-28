/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

#include "typedefs.h"

#define DISPLAY_CRTANIM_CLOSE	false
#define DISPLAY_CRTANIM_OPEN	true

void display_update(void);
draw_f display_setDrawFunc(draw_f);
void display_startCRTAnim(bool);

#endif /* DISPLAY_H_ */