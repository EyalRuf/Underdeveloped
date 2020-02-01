if (cooldown <= 0)
{
	var inst = instance_create_layer(x, y, layer, laser);
	inst.direction = point_direction(x, y, mouse_x, mouse_y);
	inst.image_angle = point_direction(x, y, mouse_x, mouse_y);
	cooldown = reload;
}