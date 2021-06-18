/// @desc destroy bullet if it hits something

if (place_meeting(x, y, oWall)) || (place_meeting(x, y, oPlayer)) {
	speed = 0;
	instance_change(oBulletHit, true);
}