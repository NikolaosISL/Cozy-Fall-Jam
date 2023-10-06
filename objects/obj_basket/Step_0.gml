/// @description Insert description here
// You can write your code in this editor









// Inherit the parent event
event_inherited();

if (mouse_check_button_pressed(mb_right))
{
	for (var _i = 0; _i < leaves_count; _i++)
	{
		instance_create_layer(x, y+32, "Instances", obj_leaf);
	}
	leaves_count = 0;
}