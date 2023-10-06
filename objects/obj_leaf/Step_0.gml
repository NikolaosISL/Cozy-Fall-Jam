if (is_falling)
{
	if (place_meeting(x, y + vertical_speed, obj_block))
	{
		while (!place_meeting(x, y + sign(vertical_speed), obj_block))
		{
			y += sign(vertical_speed);
		}
		
		is_falling = false;
	}
	else
	{
		y += vertical_speed;
	}
	
	time_since_spawn = (time_since_spawn + 1) % 360;
	horizontal_acceleration = cos(degtorad(time_since_spawn));
	horizontal_speed += horizontal_acceleration * 0.01; // magic
	x += horizontal_speed;
}