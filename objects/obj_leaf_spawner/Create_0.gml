var rise_time = function()
{
	obj_leaf_spawner._time++;
}

time_max = 120;
time_width = 600;
time_height = 12;
timebar_x = 32;
timebar_y = 32;

_time = 0;
_timer = time_source_create(time_source_game, 1, time_source_units_seconds, rise_time);