cooldown -= 1;

// As long as were not in idle hero landing animation
if (!heroLanding) {
	var key_right = keyboard_check(ord("D"));
	var key_left = -keyboard_check(ord("A"));
	var key_jump = keyboard_check_pressed(vk_space);

	// Horizontal input
	var move = key_left + key_right;
	hsp = move * movespeed;
	lookingLeft = hsp < 0 ? true : (hsp == 0 && lookingLeft); // Looking left or right

	if (place_meeting(x, y + 1 ,obj_collidable)) {
	    vsp = key_jump * -jumpspeed
		isJumping = true;
	}

	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_collidable))
	{
	    while(!place_meeting(x + sign(hsp), y, obj_collidable))
	    {
	        x += sign(hsp);
	    }
	    hsp = 0;
	}
	x += hsp;

	//Vertical Collision
	if (vsp < MAX_GRAV) vsp += grav;

	if (place_meeting(x ,y + vsp ,obj_collidable))
	{
	    while(!place_meeting(x, y + sign(vsp), obj_collidable))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
		isJumping = false;
	
		// Checking if fell from high enough for hero landing
		if (!heroLanding && fallingBegginingY != -1) {
			var distance = y - fallingBegginingY;
			if (distance >= HERO_LANDING_DISTANCE) {
				heroLanding = true;
				sprite_index = landSprite;
				image_speed = 1;
				alarm_set(0, 40);
			}
			fallingBegginingY = -1;
		}
	} else if (fallingBegginingY == -1) {
		fallingBegginingY = y;
	}
	y += vsp;
}
