gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

menu_x = gui_width / 2;
menu_y = gui_height / 2;

menu[3] = "Play";
menu[2] = "How To Play";
menu[1] = "about";
menu[0] = "Exit";

menu_items_count = array_length(menu);
menu_curser = 2;
