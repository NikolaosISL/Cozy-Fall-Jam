if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
{
	is_moving_right = false;
	is_moving_left = true;
}

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
{
	is_moving_left = false;
	is_moving_right = true;
}

if (keyboard_check_released(vk_left) || keyboard_check_released(ord("A")))
{
	is_moving_left = false;
}

if (keyboard_check_released(vk_right) || keyboard_check_released(ord("D")))
{
	is_moving_right = false;
}