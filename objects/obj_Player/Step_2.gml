image_xscale = (lookingLeft ? -1 : 1) * IMAGE_SCALE;

if (!heroLanding) {
	// On ground
	if (y == yprevious) {
		if (x != xprevious) {
			sprite_index = spr_Player_run;
			image_speed = 1;
		} else {
			image_speed = 1;
			sprite_index = spr_Player_idle;
		}
	} else {
		// Going up
		if (y < yprevious && (yprevious - y > FALL_IGNORE_DISTANCE)) {
			sprite_index = spr_Player_jump;
		} else if (y > yprevious && (y - yprevious > FALL_IGNORE_DISTANCE)) { // Going down
			sprite_index = spr_Player_fall;
			image_speed = 1;
			if (fallingBegginingY == 0) {
				fallingBegginingY = y;
			}
		}
	}
}