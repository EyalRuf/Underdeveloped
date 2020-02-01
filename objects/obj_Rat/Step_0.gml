/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x + hspeed, y, obj_collidable)) {
	hspeed = -hspeed;
}
//if (place_meeting(x + hspeed, y+20, obj_collidable)) {
//	hspeed = -hspeed;
//}

if (!place_meeting(x+32, y+20, obj_collidable) || !place_meeting(x-32, y+20, obj_collidable)) {
	hspeed = -hspeed;
}
if (hspeed > 0){
	image_xscale = 2;
}
else if (hspeed < 0){
 image_xscale = -2;
}