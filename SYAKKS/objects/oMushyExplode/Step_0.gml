/// @desc explode after hit

if (didHit) {
	if (stunDelay > 0) stunDelay--;
	else {
		instance_destroy();
	}
}