event_inherited();

background = sTitleBackground;

rowWidth = 6;

coulumnHeight[0] = 2;
coulumnHeight[1] = 3;
coulumnHeight[2] = 1;
coulumnHeight[3] = 1;
coulumnHeight[4] = 1;
coulumnHeight[5] = 1;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][1] = newButtonSprite(RES_W/2 - 160,RES_H/2 - 48,sNewGameButton,function(){roomTransition(rmTest,TRANSITION_TYPE.FADE,4);screenShake(20,0.25);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 160,RES_H/2,sLoadGameButton,function(){uiTransition(oLoadUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[1][2] = newButtonSprite(RES_W/2 + 160, RES_H/2 - 48,sSettingsButton,function(){uiTransition(oSettingsUI,TRANSITION_TYPE.WIPER,4)});
buttonSelect[1][1] = newButtonSprite(RES_W/2 + 160, RES_H / 2, sAchievementsButton,function(){uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEU,4)});
buttonSelect[1][0] = newButtonSprite(RES_W/2 + 160, RES_H/2 + 48,sExitGameButton,function(){game_end();});
buttonSelect[2][0] = newButtonSprite(32,RES_H - 32,sSocialsItchButton,function(){url_open("https://namelessgamecoder.itch.io/");});
buttonSelect[3][0] = newButtonSprite(64,RES_H - 32,sSocialsYouTubeButton,function(){url_open("https://www.youtube.com/@namelessGamecoder");});
buttonSelect[4][0] = newButtonSprite(96,RES_H - 32,sSocialsWebsiteButton,function(){url_open("https://namelessgamecoder.github.io/");});
buttonSelect[5][0] = newButtonSprite(128,RES_H - 32,sSocialsGitButton,function(){url_open("https://github.com/namelessGamecoder");});