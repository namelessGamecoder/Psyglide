event_inherited();

background = sTitleBackground;

rowWidth = 2;

coulumnHeight[0] = 1;
coulumnHeight[1] = 1;


for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {uiTransition(previousUI,TRANSITION_TYPE.WIPED,6);sfxPlay(sfxCancel);}

buttonSelect[0][0] = newButtonSprite(RES_W/2 - 64,RES_H/2,sYesButton,function(){game_end();})
buttonSelect[1][0] = newButtonSprite(RES_W/2 + 64,RES_H/2,sNoButton,closeUI);
