/// @description update player

/*
state = STATE.NORMAL;
location = LOCATION.GROUND;
spd = SPEED.STILL;
animation = ANIMATION.IDLE;
*/
var previousAnimation = animation;
var speedState = 0;
jumpBuffer--;

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

hDirection = key_right - key_left;

// ??????
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
switch(location) {
	case (LOCATION.GROUND): {
		switch(previousAnimation) {
			case(ANIMATION.IDLE): {
				if (key_jump) {
					if (hDirection == 0) || (hDirection == spriteDirection) {
						animation = ANIMATION.JUMP;
						vSpeed = standJumpSpeed;
					}
				} else {
					if (hDirection != 0) {
						if (hDirection == spriteDirection) {
							animation = ANIMATION.WALK;
						} else {
							animation = ANIMATION.TURN;
						}
					}
				}
				break;
			}
			case(ANIMATION.WALK): {
				if (image_index == 0) || (image_index >= image_number-1) {
					if (key_jump) {
						if (hDirection == 0) || (hDirection == spriteDirection) {
							animation = ANIMATION.JUMP;
							vSpeed = walkJumpSpeed;
						}
					} else {
						if (hDirection == spriteDirection) {
							animation = ANIMATION.RUN;
						} else {
							animation = ANIMATION.IDLE;
						}
					}
				}
				break;
			}
			case(ANIMATION.RUN): {
				if (image_index < 3) {
					if (key_jump) {
						if (hDirection == 0) || (hDirection == spriteDirection) {
							animation = ANIMATION.JUMP;
							vSpeed = runJumpSpeed;
						}
					} else {
						if (hDirection == 0) || (hDirection != spriteDirection) {
							animation = ANIMATION.WALK;
						}
					}
				}
				break;
			}
			case(ANIMATION.TURN): {
				if (image_index >= image_number-1) {
					animation = ANIMATION.IDLE;
				}
				break;
			}
			case(ANIMATION.FALL):
			case(ANIMATION.JUMP): {
				if (hSpeed > walkSpeed) {
					animation = ANIMATION.RUN;
				} else if (hSpeed > 0) {
					animation = ANIMATION.WALK;
				} else {
					animation = ANIMATION.IDLE;
				}
				break;
			}
		}
		break;
	}
	case (LOCATION.AIR): {
		switch(animation) {
			case(ANIMATION.JUMP): {
				if  (image_index >= image_number-1) {
					animation = ANIMATION.FALL;
				}
				break;
			}
		}
		break;
	}
}


// Apply movement
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
vSpeed += grav;

// check collisions
if (place_meeting(x, y + vSpeed, oWall)) {
	location = LOCATION.GROUND;
	vSpeed = 0;
	
} else {
	location = LOCATION.AIR;
	if (spriteDirection == 1) {
		if (key_right) && (hSpeed < 12) {
			hSpeed++;
		} else if (key_left) && (hSpeed > 3) {
			hSpeed--;
		}
	} else {
		if (key_left) && (hSpeed > -12) {
			hSpeed--;
		} else if (key_right) && (hSpeed < -3) {
			hSpeed++;
		}
	}
}

if (place_meeting(x + hSpeed, y, oWall)) {
	switch(animation) {
		case(ANIMATION.RUN): {
			animation = ANIMATION.WALK;
			break;
		}
	}
	hSpeed = 0;
}

x = x + hSpeed;
y = y + vSpeed;



// Apply animation
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (animation != previousAnimation) {
	switch (animation) {
		case (ANIMATION.IDLE): {
			sprite_index = sPlayerIdle;
			image_speed = 1;
			image_index = 0;
			hSpeed = 0;
			break;
		}
		case (ANIMATION.TURN): {
			spriteDirection = -spriteDirection;
			image_xscale = -image_xscale;
			sprite_index = sPlayerTurn;
			image_speed = 1;
			image_index = 0;
			hSpeed = 0;
			break;
		}
		case (ANIMATION.WALK): {
			sprite_index = sPlayerWalk;
			image_speed = 1;
			image_index = 0;
			hSpeed = walkSpeed * spriteDirection;
			break;
		}
		case (ANIMATION.RUN): {
			sprite_index = sPlayerRun;
			image_speed = 1;
			image_index = 0;
			hSpeed = runSpeed * spriteDirection;
			break;
		}
		case (ANIMATION.JUMP): {
			sprite_index = sPlayerJump;
			image_speed = 1;
			image_index = 0;
			break;
		}
		case (ANIMATION.FALL): {
			sprite_index = sPlayerFall;
			image_speed = 1;
			image_index = 0;
			break;
		}
	}
}




















