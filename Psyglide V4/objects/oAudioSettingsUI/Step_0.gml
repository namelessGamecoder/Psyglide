buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);sfxPlay(sfxCancel);});
buttonSelect[0][3] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 - 32,sLeftArrowButton,function() {global.masterVolume -= 0.01; global.masterVolume = max(0,global.masterVolume);sfxPlay(sfxCancel);});
buttonSelect[0][2] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 + 24,sLeftArrowButton,function() {global.musicVolume -= 0.01; global.musicVolume = max(0,global.musicVolume);sfxPlay(sfxCancel);});
buttonSelect[0][1] = newHoldButtonSprite(RES_W/2 - 144,RES_H/2 + 80,sLeftArrowButton,function() {global.sfxVolume -= 0.01; global.sfxVolume = max(0,global.sfxVolume);sfxPlay(sfxCancel);});
buttonSelect[1][2] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 - 32,sRightArrowButton,function() {global.masterVolume += 0.01; global.masterVolume = min(global.masterVolume,1);sfxPlay(sfxConfirm);});
buttonSelect[1][1] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 + 24,sRightArrowButton,function() {global.musicVolume += 0.01; global.musicVolume = min(global.musicVolume,1);sfxPlay(sfxConfirm);});
buttonSelect[1][0] = newHoldButtonSprite(RES_W/2 - 48,RES_H/2 + 80,sRightArrowButton,function() {global.sfxVolume += 0.01; global.sfxVolume = min(global.sfxVolume,1);sfxPlay(sfxConfirm);});

x+= scrollingSpeed;
y+= scrollingSpeed;

event_inherited();