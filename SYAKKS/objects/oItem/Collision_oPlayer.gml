/// @desc inclrease picked items by one

with(oPlayer) {
	itemsCollected++;
	instance_destroy(other);
}

audio_play_sound(sndItem, 1, false);
