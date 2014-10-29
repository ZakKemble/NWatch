/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

static display_t draw(void);

void watchface_small(void)
{
	display_setDrawFunc(draw);
	buttons_setFuncs(NULL, NULL, NULL);
}

static display_t draw(void)
{
	draw_string(time_timeStr(), false, 48, 28);

	return DISPLAY_DONE;
}
