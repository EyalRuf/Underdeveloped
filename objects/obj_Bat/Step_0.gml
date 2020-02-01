/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 200){
	move_towards_point( obj_Player.x, obj_Player.y, 2 );
}


if (hspeed > 0){
	image_xscale = 1;
}
else if (hspeed < 0){
 image_xscale = -1;
}