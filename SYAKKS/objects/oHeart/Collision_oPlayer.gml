/// @desc increase picked items by one

with(oPlayer) {
	if (hp < hpMax) {
		hp++;
		instance_destroy(other);
		audio_play_sound(sndHeart, 1, false);
	}
}

