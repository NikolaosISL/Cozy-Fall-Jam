draw_set_font(fnt_super_plant);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var _i = 0; _i < menu_items_count; _i++)
{
	var _text = menu[_i];
	var _col = c_gray;
	if (menu_curser == _i)
	{
		_text = string_insert("> ", _text, 0);
		_col = c_white;
	}
	
	draw_text(menu_x, menu_y - (_i * 12), _text);
}