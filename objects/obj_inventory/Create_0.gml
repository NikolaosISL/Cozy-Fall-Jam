/// @description Init Inventory

#macro item_type	0
#macro item_sprite	1
#macro item_amount	2

randomize();

// draw_set_font(fnt_Small);

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

current_item = 0;

items = array_create(2, obj_tool);

items[1] = instance_create_layer(0, 0, "Instances", obj_rake);
items[0] = instance_create_layer(0, 0, "Instances", obj_basket);
