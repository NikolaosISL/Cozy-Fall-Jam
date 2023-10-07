vertical_speed += GRAVITY;

if (place_meeting(x, y + 1, obj_block))
{
	is_falling = false;
}

if (!is_falling && is_jumping)
{
	vertical_speed = JUMP;
}

if (vertical_speed < 0 || is_falling)
{
	y += vertical_speed;
}

if (obj_player.is_moving_left)
{
	horizontal_speed = -1;
	image_xscale = -1;
}
else if (obj_player.is_moving_right)
{
	horizontal_speed = 1;
	image_xscale = 1;
}
else
{
	horizontal_speed = 0;
}

x += horizontal_speed;