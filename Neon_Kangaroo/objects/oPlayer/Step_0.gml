/// @description Update player


// Get player input
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (hasControl) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	if (wasHit) {
		if (stunDelay > 0) stunDelay--;
		else {
			if (isAlive) {
				wasHit = false;
				hasControl = true;
			} else {
				SlideTransition(TRANS_MODE.RESTART);
			}
		}
	}
}


// Calculate movement
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
var move = key_right - key_left;
hSpeed = move * walkSpeed;
vSpeed = vSpeed + grav;

if (key_jump) && (place_meeting(x, y+1, oWall)) {
	vSpeed = -12;
}


// Horizontal collision
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (place_meeting(x+hSpeed, y, oWall)) {
	// move as close to wall as possible
	// while (!place_meeting(x+sign(hspd), y, oWall)) { x = x + sign(hspd) }
	hSpeed = 0;
} else x = x + hSpeed;


// Vertical collision
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (place_meeting(x, y+vSpeed, oWall)) {
	// move as close to floor as possible
	while (!place_meeting(x, y+sign(vSpeed) ,oWall)) { 
		y = y + sign(vSpeed) 
	}
	vSpeed = 0;
} else y = y + vSpeed;


// Animations
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (!place_meeting(x, y+1, oWall)) {
	image_speed = 0;
	sprite_index = sPlayerAir;
	if (sign(vSpeed <= -3)) image_index = 0; 
	else if (sign(vSpeed > -3)) && (sign(vSpeed < 3)) image_index = 1;
	else image_index = 2;
} else {
	image_speed = 1;
	if (hSpeed == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerRun;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed);








