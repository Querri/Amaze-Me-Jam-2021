/// @desc Draw black bars for transition

if (mode != TRANS_MODE.OFF) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, guiWidth, fadePercent * guiHeightHalf, false);
	draw_rectangle(0, guiHeight, guiWidth, guiHeight - (fadePercent * guiHeightHalf), false);
}
