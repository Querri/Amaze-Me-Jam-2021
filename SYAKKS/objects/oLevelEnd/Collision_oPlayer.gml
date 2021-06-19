/// @desc Move to next world

with(oPlayer) {
	if (hasControl) {
		hasControl = false;
		SlideTransition(TRANS_MODE.NEXT);
	}
}
