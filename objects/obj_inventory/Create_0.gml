/// @description Init Inventory

#macro item_type	0
#macro item_sprite	1
#macro item_amount	2

randomize();

// draw_set_font(fnt_Small);

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

current_item = 0;
current_unlocked_items = 2;
max_items = 3;

items = array_create(3, obj_tool);

items[2] = instance_create_layer(0, 0, "Tools", obj_rake);
items[1] = instance_create_layer(0, 0, "Tools", obj_rake);
items[0] = instance_create_layer(0, 0, "Tools", obj_basket);
