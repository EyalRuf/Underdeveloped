/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x + hspeed, y, obj_collidable)) {
	hspeed = -hspeed;
}
//if (place_meeting(x + hspeed, y+20, obj_collidable)) {
//	hspeed = -hspeed;
//}

if (!place_meeting(x+15, y+20, obj_collidable) || !place_meeting(x-15, y+20, obj_collidable)) {
	hspeed = -hspeed;
}
if (hspeed > 0) {
	image_xscale = 1;
}
else if (hspeed < 0){
 image_xscale = -1;
}

if (place_meeting(x, y + sprite_height, obj_collidable)) {
	while(!place_meeting(x, y + 1, obj_collidable)) y ++;
}