/// @desc Draw menu

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++) {
	var txt = menu[i];
	
	if (menu_cursor == i) {
		var txtColor = c_white;
		var font = fMenuSelect;
	} else {
		var txtColor = c_gray;
		var font = fMenu;
	}
	
	draw_set_font(font);
	draw_set_color(txtColor);
	draw_text(menu_x, menu_y - (menu_itemheight * (i * 3)), txt);
	
	/* with outline
	var offset = 2;
	var xPos = menu_x;
	var yPos = menu_y - (menu_itemheight * (i * 3));
	
	draw_set_color(txtColor);
	draw_set_font(font);
	draw_text(xPos - offset, yPos, txt);
	draw_text(xPos + offset, yPos, txt);
	draw_text(xPos, yPos + offset, txt);
	draw_text(xPos, yPos - offset, txt);
	draw_set_color(txtColor);
	draw_text(xPos, yPos, txt);
	*/
}
