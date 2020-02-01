IMAGE_SCALE = 2.5;
MAX_GRAV = 10;
HERO_LANDING_DISTANCE = 300;
FALL_IGNORE_DISTANCE = 1;

friction = 0.5;
image_xscale = IMAGE_SCALE;
image_yscale = IMAGE_SCALE;
image_speed = 1;

isJumping = false;
lookingLeft = false;
fallingBegginingY = -1;
heroLanding = false;
grav = 0.5;
hsp = 0;
vsp = 0;
jumpspeed = 14;
movespeed = 8;
lasDir = 0;
reload = 16;
cooldown = 0;

// Sprite initialization
switch(global.artLvl) {
	case (0) : {
		jumpSprite = lvl1JumpSprite;
		landSprite = lvl1LandSprite;
		idleSprite = lvl1IdleSprite;
		fallSprite = lvl1FallSprite;
		runSprite = lvl1RunSprite;
		break;
	} case (1) : {
		jumpSprite = lvl2JumpSprite;
		landSprite = lvl2LandSprite;
		idleSprite = lvl2IdleSprite;
		fallSprite = lvl2FallSprite;
		runSprite = lvl2RunSprite;
		break;
	} case (2) : {
		jumpSprite = lvl3JumpSprite;
		landSprite = lvl3LandSprite;
		idleSprite = lvl3IdleSprite;
		fallSprite = lvl3FallSprite;
		runSprite = lvl3RunSprite;
		break;
	}
}
