if (instance_exists(obj_game_time_control))
{
	if (is_counted)
	{
		obj_game_time_control._leaves_count--;
		if (obj_game_time_control._leaves_count < 18)
		{
			obj_inventory.current_item = 1;
			obj_inventory.current_unlocked_items = 2;
		}
		if (obj_game_time_control._leaves_count < 8)
		{
			obj_inventory.current_item = 0;
			obj_inventory.current_unlocked_items = 1;
		}
	}
}