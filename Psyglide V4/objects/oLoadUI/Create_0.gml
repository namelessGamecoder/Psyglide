event_inherited();

background = sTitleBackground;

rowWidth = 1;

coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {uiTransition(previousUI,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxCancel);};

buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
