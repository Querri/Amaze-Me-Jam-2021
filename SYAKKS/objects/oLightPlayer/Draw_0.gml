/// @desc 


if (surface_exists(light_surface)) {
	surface_set_target(light_surface);
	draw_clear(c_black);
	
	with(oPlayer) {
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sGlowLarge, 0, x, y - sprite_height/2, 1, 1, 0, c_white, 0.5);
		
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(sGlowLarge, 0, x, y - sprite_height/2, 1, 1, 0, c_white, 0.7);
	}
		
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surface, 0, 0, 1, 1, 0, c_white, darkness);
	
} else {
	light_surface = surface_create(room_width, room_height);
}