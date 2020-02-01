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
} else {
	gravity = GRAVITY;
}
cooldown -= 1;