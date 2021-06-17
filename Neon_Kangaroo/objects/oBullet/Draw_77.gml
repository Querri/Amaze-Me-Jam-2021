/// @desc destroy bullet if wall hit

if (place_meeting(x, y, oWall)) || (place_meeting(x, y, oPlayer)) {
	instance_destroy();
}