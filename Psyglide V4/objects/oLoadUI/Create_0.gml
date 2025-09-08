event_inherited();

background = sNone;

rowWidth = 1;

coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][0] = newButtonSprite(64,32,sPlaceholderButton,function() {uiTransition(previousUI,TRANSITION_TYPE.WIPER,4);});