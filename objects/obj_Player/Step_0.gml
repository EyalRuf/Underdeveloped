
//if (place_meeting(x + hspeed, y - 10, obj_Platforms)) {
//	hspeed = 0;
//}

// Gravity
if (place_meeting(x, y + vspeed, obj_collidable)) {
	vspeed = 0;
	isJumping = false;
	gravity = 0;
} else {
	gravity = GRAVITY;
}