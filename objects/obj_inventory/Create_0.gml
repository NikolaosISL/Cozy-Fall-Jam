current_item = 0;
current_unlocked_items = 2;
max_items = 3;

items = array_create(3, obj_tool);

items[2] = instance_create_layer(0, 0, "Tools", obj_leaf_spawner);
items[1] = instance_create_layer(0, 0, "Tools", obj_rake);
items[0] = instance_create_layer(0, 0, "Tools", obj_basket);
