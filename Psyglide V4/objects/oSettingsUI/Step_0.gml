buttonSelect[0][3] = newButtonSprite(64,32,sPlaceholderButton,function(){if (room != rmTitle){uiTransition(previousUI,TRANSITION_TYPE.WIPEL,4);}else{uiTransition(oTitleUI,TRANSITION_TYPE.WIPEL,4);}settingsLeave = true;});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 - 64,sPlaceholderButton,function(){uiTransition(oGameSettingsUI,TRANSITION_TYPE.SHUTTER,4);});
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2,sPlaceholderButton,function(){uiTransition(oAudioSettingsUI,TRANSITION_TYPE.SHUTTER,4);});
buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 + 64,sPlaceholderButton,function(){uiTransition(oVideoSettingsUI,TRANSITION_TYPE.SHUTTER,4);});

event_inherited();