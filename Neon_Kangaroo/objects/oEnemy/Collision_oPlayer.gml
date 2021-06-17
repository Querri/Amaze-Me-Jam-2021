/// @desc Collision with player

// witch (other) means object that collided

attackDelay--;
if (attackDelay < 1) {
	attackDelay = 60;
	canMove = false;
	didHit = true;
	stunDelay = 20;
	with (oPlayer) {
		hp -= oEnemy.dmg;
		hasControl = false;
		wasHit = true;
		stunDelay = 20;
	}
	
	ScreenShake(10, 20);
}


//instance_destroy();