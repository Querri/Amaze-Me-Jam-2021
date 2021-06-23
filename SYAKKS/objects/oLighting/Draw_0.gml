/// @desc 

if (surface_exists(light_surface)) {
	surface_set_target(light_surface);
	draw_clear(darknessColor);
	
	with(oPlayer) {
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(sGlowLarge, 0, x, y - sprite_height/2, 2, 2, 0, other.playerLightColor, 0.7);
	}
	
	with(oItem) {
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(sGlowSmall, 0, x, y, 3, 3, 0, other.pickupLightColor, 1.5);
	}
	
	with(oHeart) {
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(sGlowSmall, 0, x, y, 2, 2, 0, other.pickupLightColor, 1.2);
	}
	
	
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surface, 0, 0, 1, 1, 0, c_white, darkness);
	
} else {
	light_surface = surface_create(room_width, room_height);
}