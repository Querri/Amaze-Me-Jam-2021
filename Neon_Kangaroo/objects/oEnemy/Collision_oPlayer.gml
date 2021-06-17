/// @desc Collision with player

// witch (other) means object that collided

if (attackDelayLeft <= 0) {
	attackDelayLeft = attackDelay;
	stunDelayLeft = stunDelay;
	canMove = false;
	didHit = true;
	with (oPlayer) {
		hp -= other.dmg;
		vSpeed = -12;
		hasControl = false;
		wasHit = true;
		stunDelay = 20;
	}
	ScreenShake(10, 20);
}

