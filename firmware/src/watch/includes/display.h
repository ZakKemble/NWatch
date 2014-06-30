/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

void display_set(display_f);
void display_load(void);
draw_f display_setDrawFunc(draw_f);
void display_update(void);

#if COMPILE_ANIMATIONS
typedef enum
{
	CRTANIM_CLOSE,
	CRTANIM_OPEN
}crtAnim_t;

void display_startCRTAnim(crtAnim_t);
#else
#define display_startCRTAnim(x) EMPTY_FUNC
#endif

#endif /* DISPLAY_H_ */
