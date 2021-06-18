/// @desc Progress the transition

if (mode != TRANS_MODE.OFF) {
	// Fade transition to black
	if (mode == TRANS_MODE.INTRO) {
		fadePercent = max(0, fadePercent - max((fadePercent/10), 0.005));
	} else {
		fadePercent = min(fadePercentTarget, fadePercent + max(((fadePercentTarget - fadePercent)/10), 0.005));
	}
	
	// Switch transition mode and room
	if (fadePercent == 0) || (fadePercent == fadePercentTarget) {
		switch(mode) {
			case TRANS_MODE.INTRO: {
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT: {
				mode = TRANS_MODE.INTRO
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO: {
				mode = TRANS_MODE.INTRO
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART: {
				mode = TRANS_MODE.INTRO
				room_restart();
				break;
			}
		}
	}
}
