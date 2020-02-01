// Horizontal input
if (hspeed < MAX_MOVEMNT_SPEED && hspeed > -MAX_MOVEMNT_SPEED) {
	if (keyboard_check(vk_right)) {
		hspeed += hVelocity;
	} 
	if (keyboard_check(vk_left)) {
		hspeed -= hVelocity;
	}
}
if (place_meeting(x + hspeed, y - 1, obj_collidable)) {
	hspeed = 0;
}

// Gravity
if (place_meeting(x, y + vspeed, obj_collidable)) {
	vspeed = 0;
	isJumping = false;
	gravity = 0;
}

