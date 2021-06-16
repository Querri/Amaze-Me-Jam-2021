/// @desc Collision with player

// witch (other) means object that collided
with (oPlayer) {
	hp -= oEnemy.dmg;
	vSpeed = -15;
}


//instance_destroy();