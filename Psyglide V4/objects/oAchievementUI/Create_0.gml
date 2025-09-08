event_inherited();

scrollingSpeed = 0.5;

background = sAchievementsBackground;

rowWidth = 1;

coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.WIPER,4);});
