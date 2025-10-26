event_inherited();

background = sNone;

rowWidth = 1;

coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {uiTransition(previousUI,TRANSITION_TYPE.WIPEL,4);};

buttonSelect[0][0] = newButtonSprite(64,32,sPlaceholderButton,closeUI);
