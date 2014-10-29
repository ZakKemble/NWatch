/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

// NOT FINISHED
// An empty battery icon will show up for a second before going into battery undervoltage sleep

static display_t draw(void);

void watchface_lowbatt(void)
{
	display_setDrawFunc(draw);
	buttons_setFuncs(NULL, NULL, NULL);
}

static display_t draw(void)
{
	draw_string(time_timeStr(), false, 48, 16);
	
	image_s img = newImage((FRAME_WIDTH / 2) - 8, (FRAME_HEIGHT / 2) - 4, battIconEmpty, 16, 8, WHITE, NOINVERT, 0);
	draw_bitmap_set(&img);
	draw_bitmap_s2(NULL);
	
	return DISPLAY_DONE;
}
