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

buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 - 48,sResumeButton,closeUI);
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 - 16,sSettingsButton,function() {uiTransitionMusChange(oSettingsUI,bgmSettingsTheme,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 + 16,sAchievementsButton,function() {uiTransitionMusChange(oAchievementUI,bgmAchievementTheme,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[0][3] = newButtonSprite(RES_W/2,RES_H/2 + 48,sExitGameButton,function() {roomTransitionMusChange(rmTitle,bgmTitleTheme,TRANSITION_TYPE.FADE,4);closePause = true;sfxPlay(sfxCancel);});
