/// @desc Control menu

// Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;


// Keyboard controls
if (menu_control) {
	if (keyboard_check_pressed(ord("W"))) || (keyboard_check_pressed(vk_up)) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	} else if (keyboard_check_pressed(ord("S"))) || (keyboard_check_pressed(vk_down)) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	} else if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space)) {
		menu_x_target = gui_width + 400;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width + 250) && (menu_committed != -1) {
	switch(menu_committed) {
		default:
		case 2: {
			//audio_play_sound(sndMenuClick, 1, false);
			SlideTransition(TRANS_MODE.NEXT); 
			break;
		}
	}
}