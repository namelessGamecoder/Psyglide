event_inherited();

scrollingSpeed = 0.5;

settingsLeave = false;

background = sSettingsBackground;

rowWidth = 4;

coulumnHeight[3] = 1;
coulumnHeight[2] = 1;
coulumnHeight[1] = 1;
coulumnHeight[0] = 1;

for (var i = 0; i < rowWidth;i++){
	UIY[i] = 0;
	for (var j = 0; j < coulumnHeight[i];j++){
		buttonHover[i][j] = false;
	}
}

buttonSelect[3][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function(){if (room != rmTitle){uiTransition(previousUI,TRANSITION_TYPE.WIPER,4);}else{uiTransition(oTitleUI,TRANSITION_TYPE.WIPER,4);}settingsLeave = true;sfxPlay(sfxCancel);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 64,RES_H/2,sSettingsOtherButton,function(){uiTransition(oGameSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});
buttonSelect[1][0] = newButtonSprite(RES_W/2,RES_H/2,sSettingsAudioButton,function(){uiTransition(oAudioSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});
buttonSelect[2][0] = newButtonSprite(RES_W/2 + 64,RES_H/2,sSettingsDisplayButton,function(){uiTransition(oVideoSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});
