/// @description Insert description here
if (mode != TRANS_MODE.OFF)
{
	if (!surface_exists(surf))
	{
		var _cw = display_get_width();
		var _ch = 480;
		surf = surface_create(_cw, _ch);
		surface_set_target(surf);
		draw_set_color(c_orange);
		draw_set_alpha(1);
		draw_rectangle(0, 0, _cw, _ch, false);
		surface_reset_target();
	}
	else
	{
		if (surface_exists(surf))
		{
			var _cw = display_get_width() / 3;
			var _ch = 480;
			surface_set_target(surf);
			draw_set_color(c_black);
			draw_set_alpha(1.0); // ALPHA IS HERE CHANGE TO 1 TO MAKE IT BLACK!
			draw_rectangle(0, 0, _cw, _ch, false);
			gpu_set_blendmode(bm_subtract);
			var _progress = max(0, 4 - other.precent - 0.2);
			draw_sprite_ext(spr_white_circle, 0, 320, 240, _progress, _progress, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			draw_set_alpha(1);
			surface_reset_target();
			draw_surface(surf, 0, 0);
		}
	}
}