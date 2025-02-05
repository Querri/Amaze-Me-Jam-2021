/// @desc Update camera


// Update destination
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (instance_exists(camFollow)) {
	yTo = camFollow.y - followYOffset;
	xTo = camFollow.x;
	
	if (oPlayer.spriteDirection == 1) {
		xTo += followYOffset;
	} else {
		xTo -= followYOffset;
	}
	
	if (keyboard_check(ord("W"))) {
		yTo -= cam_look_amount;
	} else if (keyboard_check(ord("S"))) {
		yTo += cam_look_amount;
	}
}


// Update position
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
x += (xTo - x) / 10;
y += (yTo - y) / 10;

// Keep camera inside room
x = clamp(x, viewXHalf, room_width - viewXHalf - shake_buffer);
y = clamp(y, viewYHalf, room_width - viewYHalf - shake_buffer);


// Screen shake
if (shake_remain > 0) {
	x += random_range(-shake_remain, shake_remain);
	y += random_range(-shake_remain, shake_remain);
	shake_remain = max(0, shake_remain - ((1/shake_lenght) * shake_magnitude));
}


// Update camera view
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
camera_set_view_pos(cam, x-viewXHalf, y-viewYHalf);



// Parallax background
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
// x = doesn't move
// 0 = moves with camera

// small divider = far
// big divider = close
if (layer_exists(bgLayer1)) {
	layer_x(bgLayer1, x/2);
}

if (layer_exists(bgLayer2)) {
	layer_x(bgLayer2, x/4);
}

if (layer_exists(bgLayer3)) {
	layer_x(bgLayer3, x/7);
}