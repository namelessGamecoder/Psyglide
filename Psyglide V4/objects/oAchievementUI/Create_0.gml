event_inherited();

scrollingSpeed = 0.5;

background = sAchievementsBackground;

rowWidth = 1;

coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {if (room == rmTitle){uiTransitionMusChange(oTitleUI,bgmTitleTheme,TRANSITION_TYPE.WIPER,4)}else{uiTransitionMusChange(oPauseUI,levelGetMusic(),TRANSITION_TYPE.WIPER,4)};sfxPlay(sfxCancel);};

buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
