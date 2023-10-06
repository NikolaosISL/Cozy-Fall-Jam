items[current_item].is_active = false;
current_item = (current_item + array_length(items) + 1) % array_length(items);
items[current_item].is_active = true;