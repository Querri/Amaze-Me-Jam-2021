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
walkSpeedMin = 2;
walkSpeedMax = 8;

runSpeedMin = 5;
runSpeed = 10;
runSpeedMax = 15;

standJumpSpeed = -5;
walkJumpSpeed = -14;
runJumpSpeed = -20;

itemsCollected = 0;
 