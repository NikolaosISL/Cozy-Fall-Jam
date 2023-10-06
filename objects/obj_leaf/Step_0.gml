if (is_falling)
{
	if (y > display_get_gui_height() - 100)
	{
		is_falling = false;
	}
	
	y += vertical_speed;
}