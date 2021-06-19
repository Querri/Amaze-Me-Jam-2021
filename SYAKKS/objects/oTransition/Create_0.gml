/// @desc Create transition obj

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiHeightHalf = guiHeight * 0.5;

enum TRANS_MODE {
	OFF,
	INTRO,
	NEXT,
	GOTO,
	RESTART
}

mode = TRANS_MODE.INTRO;
fadePercent = 1;
fadePercentTarget = 1.3;
transTarget = room;

