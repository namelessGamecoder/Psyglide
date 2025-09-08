event_inherited();

scrollingSpeed = 0.5;

background = sGeneralSettingsBackground;

rowWidth = 1;

coulumnHeight[0] = 2;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[0][1] = newButtonSprite(108,RES_H/2 - 32,sSettingsGeneralTextSpeedButton,function() {switch(global.cTextSpeed){case(0.25): global.cTextSpeed = 0.6; break;case(0.6): global.cTextSpeed = 1;break;case(1): global.cTextSpeed = 0.25 break;}});
