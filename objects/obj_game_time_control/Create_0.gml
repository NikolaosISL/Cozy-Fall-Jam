_time = 0;
_leaves_count = 0;

var rise_time = function()
{
	_time++;
}

time_max = 60;
time_width = 600;
time_height = 12;
timebar_x = 32;
timebar_y = 32;
_timer = time_source_create(time_source_game, 1, time_source_units_seconds, rise_time);