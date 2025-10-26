buttonSelect[3][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 64,RES_H/2,sSettingsOtherButton,function(){uiTransition(oGameSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});
buttonSelect[1][0] = newButtonSprite(RES_W/2,RES_H/2,sSettingsAudioButton,function(){uiTransition(oAudioSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});
buttonSelect[2][0] = newButtonSprite(RES_W/2 + 64,RES_H/2,sSettingsDisplayButton,function(){uiTransition(oVideoSettingsUI,TRANSITION_TYPE.PINHOLE,4);sfxPlay(sfxConfirm);});

x+= scrollingSpeed;
y+= scrollingSpeed;

event_inherited();