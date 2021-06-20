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
	key_interact = keyboard_check(ord("E"));
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


if (place_meeting(x, y + vSpeed, oWall)) {  // on ground
	jumpBufferLeft = jumpBuffer;
	vSpeed = 0;
	if (key_jump) && (jumpBufferLeft > 0) {  // jump
		switch(animation) {
			case(ANIMATION.IDLE): {
				animation = ANIMATION.JUMP;
				vSpeed = standJumpSpeed;
				break;
			}
			case(ANIMATION.WALK):
			case(ANIMATION.STOP): {
				animation = ANIMATION.JUMP;
				vSpeed = walkJumpSpeed;
				break;
			}
			case(ANIMATION.RUN): {
				animation = ANIMATION.JUMP;
				vSpeed = runJumpSpeed;
				break;
			}
		}
	} else {
		if (hDirection == 0) || (hDirection != spriteDirection) {  // go slower
			switch(animation) {
				case(ANIMATION.IDLE): {
					if (hDirection != 0) {
						animation = ANIMATION.TURN;
						hSpeed = 0;
						}
					break;
				}
				case(ANIMATION.INTERACT):
				case(ANIMATION.STOP):
				case(ANIMATION.WALK): {
					if (image_index >= image_number - 1) {
						animation = ANIMATION.IDLE;
						hSpeed = 0;
					}
					break;
				}
				case(ANIMATION.RUN): {
					if  (image_index < 2) {
						animation = ANIMATION.STOP;
						hSpeed = 1;
					}
					break;
				}
				case(ANIMATION.TURN): {
					if (image_index == 1) {
						animation = ANIMATION.IDLE;
						hSpeed = 0;
					}
					break;
				}
				case(ANIMATION.JUMP):
				case(ANIMATION.FLOAT): 
				case(ANIMATION.FALL): {
					if (hSpeed < runSpeed) {
						animation = ANIMATION.IDLE;
						hSpeed = 0;
					} else {
						animation = ANIMATION.STOP;
						hSpeed = 1;
					}
					break;
				}
			}
		} else {  // go faster
			switch(animation) {
				case(ANIMATION.IDLE):
				case(ANIMATION.STOP):
				case(ANIMATION.INTERACT): {
					animation = ANIMATION.WALK;
					hSpeed = hDirection * walkSpeed;
					break;
				}
				case(ANIMATION.WALK): {
					if (image_index >= image_number - 1) {
						animation = ANIMATION.RUN;
						hSpeed = hDirection * runSpeed;
					}
					break;
				}
				case(ANIMATION.RUN): {
					break;
				}
				case(ANIMATION.TURN): {
					if (image_index == 1) {
						animation = ANIMATION.WALK;
						hSpeed = hDirection * walkSpeed;
					}
					break;
				}
				case(ANIMATION.JUMP):
				case(ANIMATION.FLOAT):
				case(ANIMATION.FALL): {
					if (hSpeed/hDirection < walkSpeed) {
						animation = ANIMATION.WALK;
						hSpeed = hDirection * walkSpeed;
					} else {
						animation = ANIMATION.RUN;
						hSpeed = hDirection * runSpeed;
					}
					break;
				}
			}
		}
	}
} else {  // in air
	vSpeed = vSpeed + grav;
	hSpeed = hDirection * runSpeed;
	
	switch (animation) {
		default: {
			if (vSpeed > -5) && (vSpeed < 5) {
				animation = ANIMATION.FLOAT;
			}
			break;
		}
		case(ANIMATION.FLOAT): {
			if (vSpeed >= -5) {
				animation = ANIMATION.FALL;
			}
			break;
		}
		case (ANIMATION.FALL): {
			break;
		}
	}
}




x = x + hSpeed;
y = y + vSpeed;

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
			image_speed = 1;
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
		case (ANIMATION.JUMP): {
			sprite_index = sPlayerAir;
			image_speed = 0;
			image_index = 0;
			break;
		}
		case (ANIMATION.FLOAT): {
			sprite_index = sPlayerAir;
			image_speed = 0;
			image_index = 1;
			break;
		}
		case (ANIMATION.FALL): {
			sprite_index = sPlayerAir;
			image_speed = 0;
			image_index = 2;
			break;
		}
	}
}


