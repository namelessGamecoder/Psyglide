event_inherited();

background = sNone;

rowWidth = 1;

coulumnHeight[0] = 3;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][2] = newButtonSprite(64,32,sPlaceholderButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 - 32,sPlaceholderButton,function() {global.cFullscreen = !global.cFullscreen;});
buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 + 32,sPlaceholderButton,function() {switch(global.cResolution){case(RESOLUTION.x720):global.cResolution = RESOLUTION.x1080 break; case(RESOLUTION.x1080): global.cResolution = RESOLUTION.x720 break;}});
