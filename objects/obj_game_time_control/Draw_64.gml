draw_sprite_stretched(spr_placeholder5, 0, timebar_x, timebar_y, ((_time % time_max) / time_max) * time_width, time_height);

draw_set_font(fnt_super_plant);

draw_text(timebar_x, timebar_y + 16, string(_time));
if (instance_exists(obj_area))
{
	draw_text(timebar_x + 200, timebar_y, "Leaves on the ground - " + string(_leaves_count));
}