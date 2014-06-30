/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DRAW_H_
#define DRAW_H_

#define newImage(x, y, bitmap, width, height, foreColour, invert, offsetY) \
(image_s){ \
x, \
y, \
bitmap, \
width, \
height, \
/*foreColour,*/ \
invert, \
offsetY \
}

#define draw_bitmap_s2(a) (draw_bitmap_do())

void draw_bitmap_set(image_s* _image);

void draw_string_P(const char*, bool, byte, byte);
void draw_string(char*, bool, byte, byte);
void draw_bitmap_do(void);
//void draw_string_time(char*, bool, byte, byte);
void draw_clearArea(byte, byte, byte);//, byte);
void draw_end(void);

#endif /* DRAW_H_ */
