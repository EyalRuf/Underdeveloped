// Horizontal input
if (hspeed < MAX_MOVEMNT_SPEED && hspeed > -MAX_MOVEMNT_SPEED) {
	if (keyboard_check(vk_right)) {
		hspeed += hVelocity;
	} 
	if (keyboard_check(vk_left)) {
		hspeed -= hVelocity;
	}
}

// Gravity
if (!place_meeting(x, y + vspeed, obj_Ground)) {
	if (vspeed < MAX_GRAVITY) {
		vspeed++;
	}
} else {
	vspeed = 0;
	isJumping = false;
}