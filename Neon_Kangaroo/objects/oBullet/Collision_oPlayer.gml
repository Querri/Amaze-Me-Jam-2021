/// @desc Collision with player

with (oPlayer) {
	hp -= other.dmg;
	hasControl = false;
	wasHit = true;
	stunDelay = 20;
}

ScreenShake(10, 20);
