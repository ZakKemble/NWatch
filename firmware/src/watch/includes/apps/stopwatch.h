/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef STOPWATCH_H_
#define STOPWATCH_H_

#if COMPILE_STOPWATCH

void stopwatch_open(void);
bool stopwatch_active(void);
void stopwatch_update(void);

#endif

#endif /* STOPWATCH_H_ */
