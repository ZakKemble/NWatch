/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef ANIMATION_H_
#define ANIMATION_H_

#define ANIM_MOVE_OFF	true
#define ANIM_MOVE_ON	false

#if COMPILE_ANIMATIONS

void animation_init(void);
void animation_update(void);
void animation_start(void (*animOnComplete)(void), bool);
bool animation_active(void);
bool animation_movingOn(void);
byte animation_offsetY(void);

#else

#define animation_active() (false)
#define animation_movingOn() (false)
#define animation_offsetY() (0)

inline void animation_start(void (*animOnComplete)(void), bool goingOffScreen)
{
	(void)(goingOffScreen);
	if(animOnComplete != NULL)
		animOnComplete();
}

#endif

#endif /* ANIMATION_H_ */
