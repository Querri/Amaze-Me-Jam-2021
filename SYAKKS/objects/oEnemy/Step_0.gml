/// @description Update enemy


// Calculate movement
vSpeed = vSpeed + grav;

if (attackDelayLeft > 0) attackDelayLeft--;
if (sinceDirectionChange > 0) sinceDirectionChange--;

// Horizontal collision
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (canMove) {
	if (sinceDirectionChange < 1) && 
	((place_meeting(x+hSpeed, y, oWall)) || (place_meeting(x+hSpeed, y, oPatrolStop))) {
		sinceDirectionChange = stunDelay;
		hSpeed = -hSpeed;
	} else x = x + hSpeed;
} else if (didHit) {
	if (stunDelayLeft > 0) stunDelayLeft--;
	else {
		didHit = false;
		canMove = true;
	}
}


// Vertical collision
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (canMove) {
	if (place_meeting(x, y+vSpeed, oWall)) {
		// move as close to floor as possible
		while (!place_meeting(x, y+sign(vSpeed) ,oWall)) { 
			y = y + sign(vSpeed) 
		}
		vSpeed = 0;
	} else y = y + vSpeed;
} 


/* Animations
// ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if (!place_meeting(x, y+1, oWall)) {
	image_speed = 0;
	sprite_index = sPlayerAir;
	if (sign(vSpeed <= -3)) image_index = 0; 
	else if (sign(vSpeed > -3)) && (sign(vSpeed < 3)) image_index = 1;
	else image_index = 2;
} else {
	image_speed = 1;
	if (hSpeed == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerRun;
	}
}*/

if (hSpeed != 0) image_xscale = sign(hSpeed);







