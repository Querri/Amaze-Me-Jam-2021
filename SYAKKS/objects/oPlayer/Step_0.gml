/// @description Update player


// Get player input
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (hasControl) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	if (wasHit) {
		if (stunDelay > 0) stunDelay--;
		else if (true) {                               // <--- check if alive
			wasHit = false;
			hasControl = true;
		} else {
			SlideTransition(TRANS_MODE.RESTART);
		}
	}
}


// Calculate movement
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
var move = key_right - key_left;
if (canStop) hSpeed = move * walkSpeed;

vSpeed = vSpeed + grav;

jumpBuffer--;
if (key_jump) && (canJump) && (jumpBuffer < jumpBufferLimit) {
	canJump = 0;
	vSpeed = jumpSpeedCurrent;
	
	// consecutive jumps are bigger
	if (jumpSpeedCurrent > jumpSpeedMax) jumpSpeedCurrent *= 1.2;
}


// Horizontal collision
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (place_meeting(x+hSpeed, y, oWall)) {
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

// player is in the air
if (!place_meeting(x, y+1, oWall)) {
	image_speed = 0;
	sprite_index = sPlayerAir;
	if (sign(vSpeed <= -3)) image_index = 0; 
	else if (sign(vSpeed > -3)) && (sign(vSpeed < 3)) image_index = 1;
	else image_index = 2;
	
// player is on the ground
} else {
	jumpBuffer = jumpBufferLimit;
	
	if (sprite_index == sPlayerRun) && (image_index > 0) && (image_index < 4) canJump = true;
	else canJump = false;
	
	// spawn dust
	if (sprite_index == sPlayerAir) || ((sprite_index == sPlayerRun) && (image_index == 1)) {
		repeat(5) {
			instance_create_layer(x + sign(hSpeed) * 4, bbox_bottom, "Dust", dustObject);
		}
	}
	
	image_speed = 1;
	if (hSpeed == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerRun;
		canStop = false;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed);








