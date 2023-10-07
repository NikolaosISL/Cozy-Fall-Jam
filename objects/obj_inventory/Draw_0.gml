draw_self();
var _item_x = obj_inventory.current_item * 44;
var _xx = x - 44;
var _yy = y;

draw_sprite(spr_inventory_selected, 0, _xx + _item_x, _yy);

for (var _i = obj_inventory.current_unlocked_items; _i < obj_inventory.max_items; _i++)
{
	draw_sprite(spr_placeholder1, 0, _xx + _i * 44, _yy);
}