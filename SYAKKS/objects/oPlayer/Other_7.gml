/// @desc play run sound

if (animation == ANIMATION.RUN) {
	audio_play_sound(sndRun, 3, false);
	instance_create_layer(x + sign(hSpeed) * 4, bbox_bottom, "Dust", dustObject);
}