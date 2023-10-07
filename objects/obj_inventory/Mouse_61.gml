items[current_item].is_active = false;
current_item = (current_item + current_unlocked_items - 1) % current_unlocked_items;
items[current_item].is_active = true;