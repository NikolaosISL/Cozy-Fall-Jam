draw_self();
var _item_x = obj_inventory.current_item * 44;
var _xx = x - 44;
var _yy = y;

_color[2] = 0;
_color[1] = 0;
_color[0] = 0;

for (var _i = 0; _i < obj_inventory.current_unlocked_items; _i++)
{
	_color[_i] = c_white;
}

draw_sprite_ext(spr_basket, 0, _xx, _yy - 8, 1, 1, 0, _color[0], 1);
draw_sprite_ext(spr_rake, 0, _xx +  44, _yy, 1, 1, 0, _color[1], 1);
draw_sprite_ext(spr_leaf_blower, 0, _xx +  88, _yy, 1, 1, 0, _color[2], 1);

draw_sprite(spr_inventory_selected, 0, _xx + _item_x, _yy);

for (var _i = obj_inventory.current_unlocked_items; _i < obj_inventory.max_items; _i++)
{
	// draw_sprite(spr_placeholder1, 0, _xx + _i * 44, _yy);
}