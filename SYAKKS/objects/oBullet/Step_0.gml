/// @desc destroy bullet if it hits wall or player

if (place_meeting(x, y, oWall)) || (place_meeting(x, y, oPlayer)) {
	speed = 0;
	instance_change(oBulletSplash, true);
}