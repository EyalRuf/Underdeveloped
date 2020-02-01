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
if (place_meeting(x, y, obj_Ground)) {
	while(place_meeting(x, y, obj_Ground)) y--;
	vspeed = 0;
	isJumping = false;
	gravity = 0;
}