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
stillSpeed = 0;
walkSpeed = 3;
runSpeed = 10;

canRun = false;
canJump = true;