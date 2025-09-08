event_inherited();

scrollingSpeed = 0.5;

background = sVideoSettingsBackground;

rowWidth = 1;

coulumnHeight[0] = 3;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[0][1] = newButtonSprite(128,RES_H/2 + 32,sSettingsDisplayResolutionButton,function() {switch(global.cResolution){case("1280x720"):global.cResolution = "1920x1080" break; case("1920x1080"): global.cResolution = "1280x720" break;}});
buttonSelect[0][2] = newButtonSprite(108,RES_H/2 - 32,sSettingsDisplayFullscreenButton,function() {global.cFullscreen = !global.cFullscreen;});
