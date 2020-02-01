if (place_meeting(x + hspeed, y - 1, obj_collidable)) {
	while (!place_meeting(x + hspeed, y - 1, obj_collidable)) x += sign(hspeed);
	hspeed = 0;
}

// Gravity
if (place_meeting(x, y + vspeed, obj_collidable)) {
	while (!place_meeting(x, y + vspeed, obj_collidable)) y += sign(vspeed);
	vspeed = 0;
	isJumping = false;
	gravity = 0;
	
	if (fallingBegginingY != 0) {
		var distance = y - fallingBegginingY;
		
		if (distance >= HERO_LANDING_DISTANCE) {
			sprite_index = spr_Player_landing;
			heroLanding = true;
		}
	}
	
} else {
	gravity = GRAVITY;
}