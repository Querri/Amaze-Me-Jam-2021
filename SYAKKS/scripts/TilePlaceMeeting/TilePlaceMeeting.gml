/// @desc check tile collision for bounding box
/// @arg xx x coordinate of the bounding box
/// @arg yy y coordinate of the bounding box
/// @arg layerId = id of the collision tile layer

function TilePlaceMeeting(xx, yy, layerId){
	
	// move position to check if it would collide
	var xPrevious = x;
	var yPrevious = y;
	
	x = xx;
	y = yy;
	
	// check collision (true or false)
	var meeting = tilemap_get_at_pixel(layerId, bbox_left, bbox_top)
					|| tilemap_get_at_pixel(layerId, bbox_right, bbox_top)
					|| tilemap_get_at_pixel(layerId, bbox_left, y)
					|| tilemap_get_at_pixel(layerId, bbox_right, y)
					|| tilemap_get_at_pixel(layerId, bbox_left, bbox_bottom)
					|| tilemap_get_at_pixel(layerId, bbox_right, bbox_bottom)
					|| tilemap_get_at_pixel(layerId, x, y);
	
	// move the position back
	x = xPrevious;
	y = yPrevious;
	
	return meeting;
}