image_xscale = (lookingLeft ? -1 : 1) * IMAGE_SCALE;

if (!heroLanding) {
	// On ground
	if (y == yprevious) {
		if (x != xprevious) {
			if (sprite_index != runSprite) {
				image_speed = 1;
				sprite_index = runSprite;
			}
		} else {
			if (sprite_index != idleSprite) {
				image_speed = 1;
				sprite_index = idleSprite;
			}
		}
	} else {
		// Going up
		if (y < yprevious && (yprevious - y > FALL_IGNORE_DISTANCE)) {
			if (sprite_index != jumpSprite) { 
				image_speed = 1;
				sprite_index = jumpSprite;
			}
		} else if (y > yprevious && (y - yprevious > FALL_IGNORE_DISTANCE)) { // Going down
			if (sprite_index != fallSprite) {
				image_speed = 1;
				sprite_index = fallSprite;
			}
			
			if (fallingBegginingY == 0) {
				fallingBegginingY = y;
			}
		}
	}
}