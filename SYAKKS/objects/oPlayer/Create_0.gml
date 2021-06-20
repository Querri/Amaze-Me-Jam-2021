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

enum FACING {
	RIGHT,
	LEFT
}

enum ANIMATION {
	IDLE,
	TURN,
	WALK,
	RUN,
	STOP,
	INTERACT,
	JUMP,
	FLOAT,
	FALL,
}

state = STATE.NORMAL;
location = LOCATION.GROUND;
facing = FACING.RIGHT;
animation = ANIMATION.IDLE;

spriteDirection = 1;
hDirection = 1;
walkSpeed = 3;
runSpeed = 10;
standJumpSpeed = -10;
walkJumpSpeed = -15;
runJumpSpeed = -20;

itemsCollected = 0;
