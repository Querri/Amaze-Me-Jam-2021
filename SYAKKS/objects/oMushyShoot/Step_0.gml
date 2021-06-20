/// @desc Shoot bullets

event_inherited();


// Rotate and shoot towards the player.
if (instance_exists(oPlayer)) {
	if (point_distance(oPlayer.x, oPlayer.y, x , y) < shootDistance) {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		shootCountdown--;
		
		if shootCountdown <= 0 {
			shootCountdown = shootCountdownRate;
			sprite_index = sMushyShootAttack;
			image_index = 0;
			image_speed = 1;	
		} else if (shootCountdown == shootCountdownRate-20) {
			with (instance_create_layer(x, y, bulletLayer, oBullet)) {
				speed = bulletSpeed;
				direction = other.image_angle + random_range(-bulletSpread, bulletSpread);
				image_angle = direction;
			}
		}
	} else {
		sprite_index = sMushyShoot;
	}
}


/* Rotate and shoot towards the player.
if (instance_exists(oPlayer)) {
	if (point_distance(oPlayer.x, oPlayer.y, x , y) < shootDistance) {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		
		shootCountdown--;
		if shootCountdown <= 0 {
			shootCountdown = shootCountdownRate;
			sprite_index = sMushyShootAttack;
			with (instance_create_layer(x, y, "Bullets", oBullet)) {
				speed = bulletSpeed;
				direction = other.image_angle + random_range(-bulletSpread, bulletSpread);
				image_angle = direction;
			}
		}
	} else {
		sprite_index = sMushyShoot;
	}
}*/