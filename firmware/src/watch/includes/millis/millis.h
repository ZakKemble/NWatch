/*
 * Project: Lightweight millisecond tracking library
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/millisecond-tracking-library-for-avr/
 */

#ifndef MILLIS_H_
#define MILLIS_H_

#define MILLIS_TIMER0 0 /**< Use timer0. */
#define MILLIS_TIMER1 1 /**< Use timer1. */
#define MILLIS_TIMER2 2 /**< Use timer2. */

#include "millis_config.h"

typedef MILLIS_DATATYPE millis_t;

#if MILLIS_INLINE
extern volatile millis_t milliseconds;
#endif

#ifndef ARDUINO
/**
* Alias of millis_get().
*
* @note Not availble for Arduino since millis() is already used.
*/
#define millis() millis_get()

#if MILLIS_INLINE
/**
* Alias of millis_get_inline().
*
* @note blah
*/
#define millis_inline() millis_get_inline()
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

/**
* Initialise, must be called before anything else!
*
* @return (none)
*/
void millis_init(void);

/**
* Get milliseconds.
*
* @return Milliseconds.
*/
millis_t millis_get(void);

#if MILLIS_INLINE
/**
* Get milliseconds.
*
* @return Milliseconds.
*/
inline millis_t millis_get_inline(void)
{
	return milliseconds;
}
#endif

/**
* Turn on timer and resume time keeping.
*
* @return (none)
*/
void millis_resume(void);

/**
* Pause time keeping and turn off timer to save power.
*
* @return (none)
*/
void millis_pause(void);

/**
* Reset milliseconds count to 0.
*
* @return (none)
*/
void millis_reset(void);

/**
* Add time.
*
* @param [ms] Milliseconds to add.
* @return (none)
*/
void millis_add(millis_t ms);

/**
* Subtract time.
*
* @param [ms] Milliseconds to subtract.
* @return (none)
*/
void millis_subtract(millis_t ms);

#ifdef __cplusplus
}
#endif

#endif /* MILLIS_H_ */
