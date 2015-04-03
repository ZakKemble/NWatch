/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef OLED_H_
#define OLED_H_

typedef enum
{
	OLED_PWR_OFF = 0,
	OLED_PWR_ON = 1
} oled_pwr_t;

#define FRAME_WIDTH			128
#define FRAME_HEIGHT		64
#define FRAME_BUFFER_SIZE	((FRAME_WIDTH * FRAME_HEIGHT) / 8)

#define OLED_CONTROLLER_SSD1306	0
#define OLED_CONTROLLER_SH1106	1

extern byte oledBuffer[];

void oled_init(void);
void oled_flush(void);
void oled_power(oled_pwr_t);
void oled_setBrightness(byte);
void oled_setInvert(bool);
void oled_set180(bool);

#endif /* OLED_H_ */
