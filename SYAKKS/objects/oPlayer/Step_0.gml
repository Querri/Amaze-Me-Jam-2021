/// @description update player

/*
state = STATE.NORMAL;
location = LOCATION.GROUND;
spd = SPEED.STILL;
animation = ANIMATION.IDLE;
*/


// Get input
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (state = STATE.NORMAL) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
} else if (state = STATE.STUN) {
	if (stunDelay > 0) {  // still stunned
		stunDelay--;
	} else {
		state = STATE.NORMAL;
	}
} else {
	SlideTransition(TRANS_MODE.RESTART);
}


// Move and animate
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
var previousAnimation = animation;
hDirection = key_right - key_left;


if (hDirection == 0) || (hDirection != spriteDirection) {  // go slower
	if (animation == ANIMATION.IDLE) && (hDirection != 0) {
		animation = ANIMATION.TURN;
		hSpeed = 0;
	} else if (animation == ANIMATION.WALK) && (image_index >= image_number - 1) {
		animation = ANIMATION.IDLE;
		hSpeed = 0;
	} else if (animation == ANIMATION.RUN) && (image_index < 2) {
		animation = ANIMATION.STOP;
		hSpeed = 1;
	} else if (animation == ANIMATION.STOP) && (image_index >= image_number - 1)  {
		animation = ANIMATION.IDLE;
		hSpeed = 0;
	} else if (animation == ANIMATION.TURN) && (image_index == 1) {
		animation = ANIMATION.IDLE;
		hSpeed = 0;
	}
} else {  // go faster
	if  (animation == ANIMATION.IDLE) {
		animation = ANIMATION.WALK;
		hSpeed = hDirection * walkSpeed;
	} else if (animation == ANIMATION.WALK) && (image_index >= image_number - 1) {
		animation = ANIMATION.RUN;
		hSpeed = hDirection * runSpeed;
	} else if (animation == ANIMATION.TURN) && (image_index == 1) {
		animation = ANIMATION.WALK;
		hSpeed = hDirection * walkSpeed;
	}
}

x = x + hSpeed;
previoushDirection = hDirection;

if (animation != previousAnimation) {
	switch (animation) {
		case (ANIMATION.IDLE): {
			sprite_index = sPlayerIdle;
			image_speed = 1;
			image_index = 0;
			break;
		}
		case (ANIMATION.TURN): {
			spriteDirection = -spriteDirection;
			image_xscale = -image_xscale;
			sprite_index = sPlayerTurn;
			image_speed = 1;
			image_index = 0;
			break;
		}
		case (ANIMATION.WALK): {
			sprite_index = sPlayerWalk;
			image_speed = 0.6;
			image_index = 0;
			break;
		}
		case (ANIMATION.RUN): {
			sprite_index = sPlayerRun;
			image_speed = 1;
			image_index = 0;
			break;
		}
		case (ANIMATION.STOP): {
			sprite_index = sPlayerStop;
			image_speed = 1;
			image_index = 0;
			break;
		}
	}
}









/* horizontal
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
hSpeed = (key_right - key_left) * walkSpeed;  // direction * walkspeed
if (sign(hSpeed) != previousDir) {  // turn if direction has changed
	//sprite_index = sPlayerTurn;
	image_index = 0;
}

if (place_meeting(x + hSpeed, y, oWall)) {  // player is next to wall
	hSpeed = 0;
} else {  // move x location by horizontal speed amount
	x = x + hSpeed;
}




// vertical
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
vSpeed = vSpeed + grav;  // apply gravity to current vertical speed

if (key_jump) && (jumpBuffer < jumpBufferLimit) {  // jump if jumpbuffer is ok
	vSpeed = jumpSpeedBase;
}


if (place_meeting(x, y + vSpeed, oWall)) {  // player is on the ground
	jumpBuffer = jumpBufferLimit;
	vSpeed = 0;
	
	if (hSpeed == 0) {
		sprite_index = sPlayerIdle;
	} else {
		sprite_index = sPlayerRun;
	}
	image_speed = 1;
	image_index = 0;
	
} else {  // player is in air
	y = y + vSpeed;
	sprite_index = sPlayerAir;
	image_speed = 0;
	
	// correct jump frame
	if (vSpeed < 0) {
		image_index = 0;
	} else if (vSpeed > -3) && (vSpeed < 3) {
		image_index = 1;
	} else {
		image_index = 2;
	}
}
*/



	


/*


if (!place_meeting(x, y+1, oWall)) {  // if player is in the air
	image_speed = 0;
	sprite_index = sPlayerAir;
	if (sign(vSpeed <= -3)) image_index = 0; 
	else if (sign(vSpeed > -3)) && (sign(vSpeed < 3)) image_index = 1;
	else image_index = 2;
	
// player is on the ground
} else {
	jumpBuffer = jumpBufferLimit;
	
	if (sprite_index == sPlayerRun) && (image_index > 0) && (image_index < 4) {
		canJump = true;
	} else {
		canJump = false;
	}
	
	// spawn dust
	if (sprite_index == sPlayerAir) || ((sprite_index == sPlayerRun) && (image_index == 1)) {
		repeat(3) {
			instance_create_layer(x + sign(hSpeed) * 4, bbox_bottom, "Dust", dustObject);
		}
	}
	
	image_speed = 1;
	if (hSpeed == 0) {
		sprite_index = sPlayerIdle;
	} else {
		sprite_index = sPlayerRun;
		canStop = false;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed);

*/






