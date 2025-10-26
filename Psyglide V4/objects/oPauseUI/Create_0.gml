event_inherited();

closePause = false;

background = sPauseBackground;

rowWidth = 1;

coulumnHeight[0] = 4;

for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {roomTransition(room,TRANSITION_TYPE.FADE,4); closePause = true;sfxPlay(sfxCancel);};

buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 - 64,sResumeButton,closeUI);
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 - 32,sSettingsButton,function() {uiTransition(oSettingsUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 + 32,sAchievementsButton,function() {uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[0][3] = newButtonSprite(RES_W/2,RES_H/2 + 64,sExitGameButton,function() {roomTransition(rmTitle,TRANSITION_TYPE.FADE,4);closePause = true;});
