/// @description Insert description here
// You can write your code in this editor
x = obj_Player.x +8;
y = obj_Player.y+2;
image_yscale = 1;
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = point_direction(x, y, mouse_x, mouse_y);

if(mouse_x < obj_Player.x){
	x = obj_Player.x -10;
	image_yscale = -1;
}