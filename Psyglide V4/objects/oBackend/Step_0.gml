if (!global.stop){
	if (room != rmTitle){
		if (InputCheck(INPUT_VERB.SYSPAUSE) && !global.pause){
			global.pause = true;
			safeUITransition(oPauseUI,TRANSITION_TYPE.FADE,6);
		}
	}
}
if (global.pause && !(instance_exists(oPauseUI) || instance_exists(oUITransition) || instance_exists(oDummyCaller))){
	global.pause = false;
}