/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_ANIMATIONS

static anim_s animationStatus;

// http://javascript.info/tutorial/animation

void animation_init()
{
	animationStatus.active = false;
	animationStatus.animOnComplete = NULL;
}

void animation_update()
{
/*
	byte* buff = oled_getBuffer();
	static byte offset[8];
	if(animationStatus.active)
	{
		for(byte x=0;x<8;x++)
		{
			if(x== 0 || (x > 0 && offset[x - 1] > 16))
			{
				byte moveUpTo = 127 - offset[x];

				for(byte i=0;i<moveUpTo;i++)
				{
					uint idx = i + (x * 128);
					buff[idx] = buff[idx + offset[x]];
				}

				for(byte i=moveUpTo;i<128;i++)
				{
					uint idx = i + (x * 128);
					buff[idx] = 0x00;
				}
				
				if(animationStatus.goingOffScreen)
				{
					offset[x]+=12;
					if(offset[x] > 127)
						offset[x] = 127;
				}
				else
				{
					offset[x]-=12;
					if(offset[x] > 127)
						offset[x] = 0;
				}
			}
		}

		if(animationStatus.goingOffScreen && offset[7] > 127)
			animationStatus.active = false;
		else if(!animationStatus.goingOffScreen && offset[7] > 127)
			animationStatus.active = false;

		animationStatus.offsetY = 0;
		if(!animationStatus.active && animationStatus.animOnComplete != NULL)
		{
			animationStatus.animOnComplete();
			animationStatus.animOnComplete = NULL;
		}
	}	
	return;
*/
/*	byte* buff = oled_getBuffer();
	static byte offset;
	if(animationStatus.active)
	{
		for(byte x=0;x<8;x++)
		{
			byte moveUpTo = 127 - offset;

			if(x & 0x02)
			{
				for(byte i=0;i<moveUpTo;i++)
				{
					uint idx = i + (x * 128);
					buff[idx] = buff[idx + offset];
				}

				for(byte i=moveUpTo;i<128;i++)
				{
					uint idx = i + (x * 128);
					buff[idx] = 0x00;
				}
			}
			else
			{
				for(byte i=0;i<moveUpTo;i++)
				{
					uint idx = ((x + 1) * 128) - 1 - i;
					buff[idx] = buff[idx - offset];
				}

				for(byte i=moveUpTo;i<128;i++)
				{
					uint idx = ((x + 1) * 128) - 1 - i;
					buff[idx] = 0x00;
				}
			}
		}

		if(animationStatus.goingOffScreen)
		{
			offset+=5;
			if(offset > 127)
			{
				animationStatus.active = false;
				offset = 127;
			}			
		}
		else
		{
			offset-=5;
			if(offset > 127)
			{
				animationStatus.active = false;
				offset = 0;
			}
		}

		animationStatus.offsetY = 0;
		if(!animationStatus.active && animationStatus.animOnComplete != NULL)
		{
			animationStatus.animOnComplete();
			animationStatus.animOnComplete = NULL;
		}
	}	
	return;
*/

// y = x^4

	if(animationStatus.active)
	{
		byte offsetY = animationStatus.offsetY;
		if(animationStatus.goingOffScreen)
		{
			if(offsetY < 4)
				offsetY += 1;
			else if(offsetY < 8)
				offsetY += 3;
			else if(offsetY < 16)
				offsetY += 5;
			else
				offsetY += 8;

			if(offsetY >= FRAME_HEIGHT)
			{
				animationStatus.active = false;
				offsetY = 0;
			}
		}
		else
		{
			if(offsetY > 255 - 4)
				offsetY += 1;
			else if(offsetY > 255 - 8)
				offsetY += 3;
			else if(offsetY > 255 - 16)
				offsetY += 5;
			else
				offsetY += 8;

			if(offsetY < 10)
			{
				animationStatus.active = false;
				offsetY = 0;
			}
		}

		animationStatus.offsetY = offsetY;
		if(!animationStatus.active && animationStatus.animOnComplete != NULL)
		{
			animationStatus.animOnComplete();
			animationStatus.animOnComplete = NULL;
		}
	}
}

void animation_start(void (*animOnComplete)(void), bool goingOffScreen)
{
	if(appConfig.animations)
	{
		animationStatus.active = true;
		animationStatus.offsetY = goingOffScreen ? 0 : 192;
		animationStatus.animOnComplete = animOnComplete;
		animationStatus.goingOffScreen = goingOffScreen;
	}
	else
	{
		if(animOnComplete != NULL)
			animOnComplete();
	}		
}

bool animation_active()
{
	return animationStatus.active;
}

bool animation_movingOn()
{
	return !animationStatus.goingOffScreen;
}

byte animation_offsetY()
{
	return animationStatus.offsetY;
}

#endif
