/// @desc Collision with player

// witch (other) means object that collided

if (attackDelayLeft <= 0) {
	attackDelayLeft = attackDelay;
	stunDelayLeft = stunDelay;
	canMove = false;
	didHit = true;
	with (oPlayer) {
		hp -= other.dmg;
		if (hp <= 0) oPlayer.state = STATE.DEAD;
		
		vSpeed = -12;
		hasControl = false;
		wasHit = true;
		stunDelay = 20;
	}
	ScreenShake(10, 20);
	audio_play_sound(sndHit, 1, false);
}

