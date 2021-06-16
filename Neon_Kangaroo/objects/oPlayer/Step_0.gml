/// Happens every frame

// Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if (key_jump) && (place_meeting(x, y+1, oWall)) {
	vsp = -7;
}


// Horizontal collision
if (place_meeting(x+hsp, y, oWall)) {
	// move as close to wall as possible
	// while (!place_meeting(x+sign(hspd), y, oWall)) { x = x + sign(hspd) }
	hsp = 0;
} else {
	x = x + hsp;
}


// Vertical collision
if (place_meeting(x, y+vsp, oWall)) {
	// move as close to wall as possible
	while (!place_meeting(x, y+sign(vsp) ,oWall)) { 
		y = y + sign(vsp) 
	}
	vsp = 0;
} else {
	y = y + vsp;
}



