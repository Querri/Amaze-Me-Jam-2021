/// @desc Update camera

// Update destination
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (instance_exists(camFollow)) {
	xTo = camFollow.x;
	yTo = camFollow.y;
}


// Update position
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, viewXHalf, room_width-viewXHalf);
y = clamp(y, viewYHalf, room_width-viewYHalf);


// Update camera view
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
camera_set_view_pos(cam, x-viewXHalf, y-viewYHalf);