if (is_falling)
{
	if (place_meeting(x, y + vertical_speed, obj_block))
	{
		while (!place_meeting(x, y + sign(vertical_speed), obj_block))
		{
			y += sign(vertical_speed);
		}
		
		is_falling = false;
		if (instance_exists(obj_game_time_control) && !is_counted)
		{
			obj_game_time_control._leaves_count++;
			is_counted = true;
			
			if (obj_game_time_control._leaves_count >= 20)
			{
				obj_inventory.current_unlocked_items = 3;
			}
			else if (obj_game_time_control._leaves_count >= 10)
			{
				obj_inventory.current_unlocked_items = 2;
			}
		}
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

if (instance_exists(obj_rake) && obj_rake.is_active)
{
	if (place_meeting(x, y, obj_rake))
	{
		dist = 0;

		while (place_meeting(x + dist, y, obj_rake) && place_meeting(x - dist, y, obj_rake))
		{
			dist++;
		}
	
		var _chance = irandom(10);
		if (_chance != 0)
		{
			x -= dist + _chance;
			y -= (15 - _chance) / 5;
			is_falling = true;
		}
		else
		{
			x += dist + 20;
		}
	}
}

if (instance_exists(obj_leaf_blower) && obj_leaf_blower.is_active)
{
	if (obj_leaf_blower.image_xscale > 0)
	{
		if (x < obj_leaf_blower.x && y > 332)
		{
			instance_destroy();
		}
	}
	else
	{
		if (x > obj_leaf_blower.x && y > 332)
		{
			instance_destroy();
		}
	}
}