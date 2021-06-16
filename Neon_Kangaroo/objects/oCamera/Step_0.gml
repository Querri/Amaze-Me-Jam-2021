/// @description Update camera

// Update destination
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}


// Update position
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_x_half, room_width-view_x_half);
y = clamp(y, view_y_half, room_width-view_y_half);


// Update camera view
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
camera_set_view_pos(cam, x-view_x_half, y-view_y_half);