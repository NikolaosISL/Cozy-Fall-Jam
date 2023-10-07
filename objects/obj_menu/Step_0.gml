
if (keyboard_check_pressed(vk_enter))
{
	switch(menu[menu_curser])
	{
		case "Exit":
		game_end();
		break;
		
		case "How To Play":
		obj_transition.target = rm_how_to_play;
		obj_transition.mode = TRANS_MODE.GOTO;
		break;
		
		case "Play":
		default:
		obj_transition.target = rm_game;
		obj_transition.mode = TRANS_MODE.GOTO;
		break;
	}
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{
	menu_curser = (menu_curser + menu_items_count + 1) % menu_items_count;
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
	menu_curser = (menu_curser + menu_items_count - 1) % menu_items_count;
}