/// @desc GUI / Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 60;

menu_x = gui_width - gui_margin + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; 
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "LEVEL 1: ROCKY WORLD";
menu[2] = "LEVEL 2: POISONOUS WORLD";
menu[1] = "LEVEL 3: SPIKY WORLD";
menu[0] = "LEVEL 4: TBA";

menu_items = array_length_1d(menu);
menu_cursor = 3;
