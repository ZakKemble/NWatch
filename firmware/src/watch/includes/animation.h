/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef ANIMATION_H_
#define ANIMATION_H_

#include "typedefs.h"

#define ANIM_MOVE_OFF	true
#define ANIM_MOVE_ON	false

void animation_init(void);
void animation_update(void);
void animation_start(void (*animOnComplete)(void), bool);
bool animation_active(void);
bool animation_movingOn(void);
byte animation_offsetY(void);

#endif /* ANIMATION_H_ */