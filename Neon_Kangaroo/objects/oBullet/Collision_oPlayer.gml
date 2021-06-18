/// @desc Collision with player

with (oPlayer) {
	hp -= other.dmg;
	hasControl = false;
	wasHit = true;
	stunDelay = 20;
	
	if (hp <= 0) isAlive = false;
}

ScreenShake(10, 20);
