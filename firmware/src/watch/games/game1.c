/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_GAME1

#define PLATFORM_WIDTH	12
#define PLATFORM_HEIGHT	4
#define UPT_MOVE_NONE	0
#define UPT_MOVE_RIGHT	1
#define UPT_MOVE_LEFT	2
#define BLOCK_COLS		32
#define BLOCK_ROWS		5
#define BLOCK_COUNT		(BLOCK_COLS * BLOCK_ROWS)

typedef struct{
	float x;
	float y;
	float velX;
	float velY;
}s_ball;

static const byte block[] PROGMEM ={
	0x07,0x07,0x07,
};

static const byte platform[] PROGMEM ={
	0x60,0x70,0x50,0x10,0x30,0xF0,0xF0,0x30,0x10,0x50,0x70,0x60,
};

static const byte ballImg[] PROGMEM ={
	0x03,0x03,
};

static bool btnExit(void);
static bool btnRight(void);
static bool btnLeft(void);
static display_t draw(void);

static byte uptMove;
static s_ball ball;
static bool* blocks;
static byte lives;
static uint score;
static byte platformX;

void game1_start()
{
	menu_close();

	srand(millis());

	display_setDrawFunc(draw);
	buttons_setFuncs(btnRight, btnExit, btnLeft);
	
	uptMove = UPT_MOVE_NONE;

	ball.x = FRAME_WIDTH / 2;
	ball.y = FRAME_HEIGHT - 10;
	ball.velX = -1;
	ball.velY = -1.1;

	blocks = calloc(BLOCK_COUNT, 1);
	
	lives = 3;
	score = 0;
	platformX = (FRAME_WIDTH / 2) - (PLATFORM_WIDTH / 2);
}

static bool btnExit()
{
	free(blocks);
	if(lives == 255)
		game1_start();
	else
		animation_start(display_load, ANIM_MOVE_OFF);
	return true;
}

static bool btnRight()
{
	uptMove = UPT_MOVE_RIGHT;
	return false;
}

static bool btnLeft()
{
	uptMove = UPT_MOVE_LEFT;
	return false;
}

static display_t draw()
{
	bool gameEnded = ((score >= BLOCK_COUNT) || (lives == 255));

	byte platformXtmp = platformX;

	// Move platform
	if(uptMove == UPT_MOVE_RIGHT)
		platformXtmp += 3;
	else if(uptMove == UPT_MOVE_LEFT)
		platformXtmp -= 3;
	uptMove = UPT_MOVE_NONE;

	// Make sure platform stays on screen
	if(platformXtmp > 250)
		platformXtmp = 0;
	else if(platformXtmp > FRAME_WIDTH - PLATFORM_WIDTH)
		platformXtmp = FRAME_WIDTH - PLATFORM_WIDTH;

	// Draw platform
	draw_bitmap(platformXtmp, FRAME_HEIGHT - 8, platform, 12, 8, NOINVERT, 0);

	platformX = platformXtmp;

	// Move ball
	if(!gameEnded)
	{
		ball.x += ball.velX;
		ball.y += ball.velY;
	}

	bool blockCollide = false;
	const byte ballX = ball.x;
	const byte ballY = ball.y;

	// Block collision
	byte idx = 0;
	LOOP(BLOCK_COLS, x)
	{
		LOOP(BLOCK_ROWS, y)
		{
			if(!blocks[idx] && ballX >= x * 4 && ballX < (x * 4) + 4 && ballY >= (y * 4) + 8 && ballY < (y * 4) + 8 + 4)
			{
				buzzer_buzz(100, TONE_2KHZ, VOL_UI, PRIO_UI, NULL);
				led_flash(LED_GREEN, 50, 255);
				blocks[idx] = true;
				blockCollide = true;
				score++;
			}
			idx++;
		}
	}

	// Side wall collision
	if(ballX > FRAME_WIDTH - 2)
	{
		if(ballX > 240)
			ball.x = 0;		
		else
			ball.x = FRAME_WIDTH - 2;
		ball.velX *= -1;		
	}

	// Platform collision
	bool platformCollision = false;
	if(!gameEnded && ballY >= FRAME_HEIGHT - PLATFORM_HEIGHT && ballY < 240 && ballX >= platformX && ballX <= platformX + PLATFORM_WIDTH)
	{
		platformCollision = true;
		buzzer_buzz(200, TONE_5KHZ, VOL_UI, PRIO_UI, NULL);
		ball.y = FRAME_HEIGHT - PLATFORM_HEIGHT;
		if(ball.velY > 0)
			ball.velY *= -1;
		ball.velX = ((float)rand() / (RAND_MAX / 2)) - 1; // -1.0 to 1.0
	}

	// Top/bottom wall collision
	if(!gameEnded && !platformCollision && (ballY > FRAME_HEIGHT - 2 || blockCollide))
	{
		if(ballY > 240)
		{
			buzzer_buzz(200, TONE_2_5KHZ, VOL_UI, PRIO_UI, NULL);
			ball.y = 0;
		}
		else if(!blockCollide)
		{
			buzzer_buzz(200, TONE_2KHZ, VOL_UI, PRIO_UI, NULL);
			ball.y = FRAME_HEIGHT - 1;
			lives--;
		}
		ball.velY *= -1;
	}

	// Draw ball
	draw_bitmap(ball.x, ball.y, ballImg, 2, 8, NOINVERT, 0);

	// Draw blocks
	idx = 0;
	LOOP(BLOCK_COLS, x)
	{
		LOOP(BLOCK_ROWS, y)
		{
			if(!blocks[idx])
				draw_bitmap(x * 4, (y * 4) + 8, block, 3, 8, NOINVERT, 0);
			idx++;
		}
	}

	// Draw score
	char buff[6];
	sprintf_P(buff, PSTR("%u"), score);
	draw_string(buff, false, 0, 0);

	// Draw lives
	if(lives != 255)
	{
		LOOP(lives, i)
			draw_bitmap((FRAME_WIDTH - (3*8)) + (8*i), 1, livesImg, 7, 8, NOINVERT, 0);
	}	

	// Got all blocks
	if(score >= BLOCK_COUNT)
		draw_string_P(PSTR(STR_WIN), false, 50, 32);

	// No lives left (255 because overflow)
	if(lives == 255)
		draw_string_P(PSTR(STR_GAMEOVER), false, 34, 32);

	return DISPLAY_BUSY;
}

#endif
