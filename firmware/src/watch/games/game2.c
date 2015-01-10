/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_GAME2

#define UPT_MOVE_NONE	0
#define UPT_MOVE_UP		1
#define UPT_MOVE_DOWN	2

#define CAR_COUNT	3
#define CAR_WIDTH	12
#define CAR_LENGTH	15
#define ROAD_SPEED	6

typedef struct {
//	bool ok;
	byte x;
	byte y;
	byte speed;
}s_otherCars;

typedef struct {
	bool hit;
	byte lane;
	byte y;
}s_myCar;

static const byte carImg[] PROGMEM ={
	0x40,0xF8,0xEC,0x2C,0x2C,0x38,0xF0,0x10,0xD0,0x30,0xE8,0x4C,0x4C,0x9C,0xF0,
	0x02,0x1F,0x37,0x34,0x34,0x1C,0x0F,0x08,0x0B,0x0C,0x17,0x32,0x32,0x39,0x0F,
};

static const byte roadMarking[] PROGMEM ={
	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
};

static bool btnExit(void);
static bool btnDown(void);
static bool btnUp(void);
static display_t draw(void);

static const uint eepHighscore EEMEM;

static uint highscore;
static uint score;
static byte uptMove;
static byte lives;
static s_otherCars cars[CAR_COUNT];

static const tune_t tune[] TUNEMEM = {
	TONE_2KHZ<<8 | 200,
	TONE_2_5KHZ<<8 | 200,
	TONE_3KHZ<<8 | 200,
	TONE_3KHZ<<8 | 200,
	TONE_3KHZ<<8 | 200,
	TONE_2_5KHZ<<8 | 200,
	TONE_2_5KHZ<<8 | 200,
	TONE_2_5KHZ<<8 | 200,
	TONE_3KHZ<<8 | 200,
	TONE_4KHZ<<8 | 200,
	TONE_3KHZ<<8 | 200,
	TONE_4KHZ<<8 | 200,
	TONE_REPEAT
};

void game2_start()
{
	menu_close();

	srand(millis());

	display_setDrawFunc(draw);
	buttons_setFuncs(btnUp, btnDown, btnExit);

	LOOP(CAR_COUNT, i)
	{
		cars[i].y = i * 16;
		cars[i].speed = i + 1;
		cars[i].x = FRAME_WIDTH;
	}	

	eeprom_read_block(&highscore, &eepHighscore, sizeof(uint));
	score = 0;
	uptMove = UPT_MOVE_NONE;
	lives = 3;
	
//	tune_play(tune);
}

static bool btnExit()
{
	if(lives == 255)
		game2_start();
	else
		animation_start(display_load, ANIM_MOVE_OFF);
	return true;
}

static bool btnDown()
{
	uptMove = UPT_MOVE_DOWN;
	return true;
}

static bool btnUp()
{
	uptMove = UPT_MOVE_UP;
	return true;
}

static display_t draw()
{
	static s_myCar myCar;
	static millis_t hitTime;
	static bool newHighscore;

	// Change lane
	if(uptMove == UPT_MOVE_UP && myCar.lane < 3)
		myCar.lane++;
	else if(uptMove == UPT_MOVE_DOWN&& myCar.lane > 0)
		myCar.lane--;
	uptMove = UPT_MOVE_NONE;

	// Move to new lane
	byte y = myCar.lane * 16;
	if(myCar.y > y)
		myCar.y -= 2;
	else if(myCar.y < y)
		myCar.y += 2;

	if(lives != 255)
	{
		// Move cars
		LOOP(CAR_COUNT, i)
		{
			// Move car
			cars[i].x -= cars[i].speed;

			// Gone off screen
			if(cars[i].x > 200 && cars[i].x < 255 - 16)
			{
				cars[i].x = FRAME_WIDTH;
				cars[i].y = (rand() % 4) * 16;
				score++;
			}
		}

		// Stop cars from going through each other
		// Its a little bit glitchy
		LOOP(CAR_COUNT, i)
		{
			LOOP(CAR_COUNT, c)
			{
				if(i != c && cars[i].y == cars[c].y && cars[i].x > cars[c].x && cars[i].x < cars[c].x + CAR_LENGTH)
				{
					cars[i].x = cars[c].x + CAR_LENGTH + 1;
					//cars[i].speed = cars[c].speed;
				}					
			}
		}

		// Collision
		if(!myCar.hit)
		{
			LOOP(CAR_COUNT, i)
			{
				if(cars[i].x < CAR_LENGTH)
				{
					byte carY = cars[i].y + 2;
					byte myCarY = myCar.y + 2;
					if((carY >= myCarY && carY <= myCarY + CAR_WIDTH) || (carY + CAR_WIDTH >= myCarY && carY + CAR_WIDTH <= myCarY + CAR_WIDTH))
					{
						myCar.hit = true;
						hitTime = millis();
						lives--;
						if(lives == 255)
						{
							// Check for new highscore
							if(score > highscore)
							{
								newHighscore = true;
								highscore = score;
								eeprom_update_block(&highscore, (uint*)&eepHighscore, sizeof(uint));
							}
							else
								newHighscore = false;

							led_flash(LED_RED, 250, 255);
							buzzer_buzz(250, TONE_2KHZ, VOL_UI, PRIO_UI, NULL);
						}	
						else
						{
							led_flash(LED_RED, 30, 255);
							buzzer_buzz(100, TONE_2KHZ, VOL_UI, PRIO_UI, NULL);
						}
					}
				}
			}
		}
	}

	millis_t now = millis();

	if(myCar.hit && now - hitTime >= 1000)
		myCar.hit = false;

	// Quake
	static byte quakeY;
	if(myCar.hit && now - hitTime < 350)
	{
		if(quakeY == 2)
			quakeY = -2;
		else
			quakeY = 2;
	}
	else
		quakeY = 0;
	
	// Draw my car
	if(!myCar.hit || (myCar.hit && (now & 64)))
		draw_bitmap(0, myCar.y + quakeY, carImg, 15, 16, NOINVERT, 0);

	char buff[6];
	if(lives != 255)
	{
		// Draw other cars
		LOOPR(CAR_COUNT, i)
			draw_bitmap(cars[i].x, cars[i].y + quakeY, carImg, 15, 16, NOINVERT, 0);

		// Draw road markings
		static byte dotX[3] = {0, 45, 90};
		LOOP(3, i)
		{
			dotX[i] -= ROAD_SPEED;

			if(dotX[i] >= FRAME_WIDTH && dotX[i] < 255 - 8)
				dotX[i] = FRAME_WIDTH;

			LOOP(3, x)
				draw_bitmap(dotX[i], (x * 16) + quakeY + 16, roadMarking, 8, 8, NOINVERT, 0);
		}

		// Draw score
		sprintf_P(buff, PSTR("%u"), score);
		draw_string(buff, false, FRAME_WIDTH - (7*5), 1);

		// Draw lives
		LOOP(lives, i)
			draw_bitmap(32 + (8*i), 1, livesImg, 7, 8, NOINVERT, 0);
	}
	else
	{
		// Draw end game stuff

		draw_string_P(PSTR(STR_GAMEOVER), false, 20, 0);
		draw_string_P(PSTR(STR_SCORE), false, 20, 16);
		draw_string_P(PSTR(STR_HIGHSCORE), false, 20, 32);

		if(newHighscore)
			draw_string_P(PSTR(STR_NEWHIGHSCORE), false, 20, 48);

		sprintf_P(buff, PSTR("%u"), score);
		draw_string(buff, false, 96, 16);

		sprintf_P(buff, PSTR("%u"), highscore);
		draw_string(buff, false, 96, 32);
	}

	return DISPLAY_BUSY;
}

#endif
