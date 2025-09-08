if (room != rmTitle){
	if (InputCheck(INPUT_VERB.SYSPAUSE) && !global.pause){
		global.pause = true;
		safeUITransition(oPauseUI,TRANSITION_TYPE.FADE,6);
	}
}