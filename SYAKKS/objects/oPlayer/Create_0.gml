/// @desc define bunch of states


enum STATE {
	NORMAL,
	STUN,
	DEAD
}

enum LOCATION {
	GROUND,
	AIR
}


enum ANIMATION {
	IDLE,
	TURN,
	WALK,
	RUN,
	STOP,
	JUMP,
	FLOAT,
	FALL,
}

state = STATE.NORMAL;
location = LOCATION.GROUND;
animation = ANIMATION.IDLE;

spriteDirection = 1;
hDirection = 1;

walkSpeed = 4;
walkSpeedMax = 8;

runSpeed = 10;
runSpeedMax = 15;

standJumpSpeed = -15;
walkJumpSpeed = -20;
runJumpSpeed = -25;

itemsCollected = 0;
 
 
 
 
 /* health stuff
 maxHearts = 3;
 
 enum HEARTS {
	INDEX,
	FULL_VALUE,
	HALF_VALUE
}


for (var hearts = 0; hearts < hpMax; hearts++) {
	HEARTS[hearts, HEARTS.INDEX] = 2;
	HEARTS[hearts, HEARTS.FULL_VALUE] = hpMax / 2;
	HEARTS[hearts, HEARTS.HALF_VALUE] = HEARTS[hearts, HEARTS.FULL_VALUE] / 2;
}
*/