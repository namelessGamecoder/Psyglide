event_inherited();

rowWidth = 3;

coulumnHeight[0] = 2;
coulumnHeight[1] = 1;
coulumnHeight[2] = 2;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][1] = newButtonSprite(RES_W/2 - 96,RES_H/2 - 32,sPlaceholderButton,function(){room_goto(rmTest);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 96,RES_H/2 + 32,sPlaceholderButton,function(){room_goto(rmTest);});
buttonSelect[1][0] = newButtonSprite(RES_W/2, RES_H / 2 + 32, sPlaceholderButton,function(){uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEU,4)});
buttonSelect[2][1] = newButtonSprite(RES_W/2 + 96, RES_H/2 - 32,sPlaceholderButton,function(){uiTransition(oSettingsUI,TRANSITION_TYPE.WIPER,4)});
buttonSelect[2][0] = newButtonSprite(RES_W/2 + 96, RES_H/2 + 32,sPlaceholderButton,function(){game_end();});