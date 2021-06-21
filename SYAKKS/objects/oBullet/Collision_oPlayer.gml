/// @desc Collision with player

with (oPlayer) {
	hp -= other.dmg;
	if (hp <= 0) isAlive = false;
	hasControl = false;
	wasHit = true;
	stunDelay = 20;
}

ScreenShake(10, 20);
audio_play_sound(sndHit, 1, false);
