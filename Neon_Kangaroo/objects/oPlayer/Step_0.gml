/// @description Update player


if (hasControl) {
	// Get player input
	// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);


	// Calculate movement
	// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	var move = key_right - key_left;
	hsp = move * walksp;
	vsp = vsp + grv;

	if (key_jump) && (place_meeting(x, y+1, oWall)) {
		vsp = -12;
	}


	// Horizontal collision
	// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	if (place_meeting(x+hsp, y, oWall)) {
		// move as close to wall as possible
		// while (!place_meeting(x+sign(hspd), y, oWall)) { x = x + sign(hspd) }
		hsp = 0;
	} else x = x + hsp;


	// Vertical collision
	// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	if (place_meeting(x, y+vsp, oWall)) {
		// move as close to floor as possible
		while (!place_meeting(x, y+sign(vsp) ,oWall)) { 
			y = y + sign(vsp) 
		}
		vsp = 0;
	} else y = y + vsp;


	// Animations
	// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	if (!place_meeting(x, y+1, oWall)) {
		image_speed = 0;
		sprite_index = sPlayerAir;
		if (sign(vsp <= -3)) image_index = 0; 
		else if (sign(vsp > -3)) && (sign(vsp < 3)) image_index = 1;
		else image_index = 2;
	} else {
		image_speed = 1;
		if (hsp == 0) {
			sprite_index = sPlayer;
		} else {
			sprite_index = sPlayerRun;
		}
	}

	if (hsp != 0) image_xscale = sign(hsp);
} else {
	// Player has no control
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}







