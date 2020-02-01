if (!heroLanding && !isJumping && vspeed == 0) {
	isJumping = true;
	vspeed = -JUMP_SPEED;
	gravity = GRAVITY;
}