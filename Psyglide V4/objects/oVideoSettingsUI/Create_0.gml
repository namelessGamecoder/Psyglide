event_inherited();

scrollingSpeed = 0.5;

background = sVideoSettingsBackground;

rowWidth = 1;

coulumnHeight[0] = 3;

for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

closeUI = function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);sfxPlay(sfxCancel);};

buttonSelect[0][2] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
buttonSelect[0][1] = newButtonSprite(64,RES_H/2 + 32,sSettingsDisplayResolutionButton,function() {switch(global.cResolution){case("1280x720"):global.cResolution = "1920x1080" break; case("1920x1080"): global.cResolution = "1280x720" break;}});
buttonSelect[0][0] = newButtonSprite(64,RES_H/2 - 32,sSettingsDisplayFullscreenButton,function() {global.cFullscreen = !global.cFullscreen;});
