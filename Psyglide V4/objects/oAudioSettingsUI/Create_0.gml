event_inherited();

scrollingSpeed = 0.5;

background = sAudioSettingsBackground;

rowWidth = 3;

coulumnHeight[0] = 3;
coulumnHeight[1] = 3;
coulumnHeight[2] = 1;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[0][2] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 - 32,sLeftArrowButton,function() {global.masterVolume -= 0.01; global.masterVolume = max(0,global.masterVolume);});
buttonSelect[0][1] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 + 24,sLeftArrowButton,function() {global.musicVolume -= 0.01; global.musicVolume = max(0,global.musicVolume);});
buttonSelect[0][0] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 + 80,sLeftArrowButton,function() {global.sfxVolume -= 0.01; global.sfxVolume = max(0,global.sfxVolume);});
buttonSelect[1][2] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 - 32,sRightArrowButton,function() {global.masterVolume += 0.01; global.masterVolume = min(global.masterVolume,1);});
buttonSelect[1][1] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 + 24,sRightArrowButton,function() {global.musicVolume += 0.01; global.musicVolume = min(global.musicVolume,1);});
buttonSelect[1][0] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 + 80,sRightArrowButton,function() {global.sfxVolume += 0.01; global.sfxVolume = min(global.sfxVolume,1);});
buttonSelect[2][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
