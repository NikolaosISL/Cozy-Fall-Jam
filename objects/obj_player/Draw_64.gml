/// @description Insert description here

draw_sprite(spr_inventory_base, 0, 132, 450);
var _item_x = obj_inventory.current_item * 22;
var _xx = 132 + 13 ;
var _yy = 450 + 13;

draw_sprite(spr_inventory_selected, 0, _xx + _item_x, _yy);

for (var _i = obj_inventory.current_unlocked_items; _i < obj_inventory.max_items; _i++)
{
	draw_sprite(spr_placeholder1, 0, _xx + _i * 22, _yy);
}