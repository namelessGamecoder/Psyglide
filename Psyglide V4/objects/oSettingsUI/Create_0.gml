event_inherited();

settingsLeave = false;

background = sNone;

rowWidth = 1;

coulumnHeight[0] = 4;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][3] = newButtonSprite(64,32,sPlaceholderButton,function(){if (room != rmTitle){uiTransition(previousUI,TRANSITION_TYPE.WIPEL,4);}else{uiTransition(oTitleUI,TRANSITION_TYPE.WIPEL,4);settingsLeave = true;}});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 - 64,sPlaceholderButton,function(){uiTransition(oGameSettingsUI,TRANSITION_TYPE.SHUTTER,4);});
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2,sPlaceholderButton,function(){uiTransition(oAudioSettingsUI,TRANSITION_TYPE.SHUTTER,4);});
buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 + 64,sPlaceholderButton,function(){uiTransition(oVideoSettingsUI,TRANSITION_TYPE.SHUTTER,4);});
