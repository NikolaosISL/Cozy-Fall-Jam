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
}