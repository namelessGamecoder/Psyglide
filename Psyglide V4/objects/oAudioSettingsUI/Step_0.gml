buttonSelect[0][3] = newButtonSprite(64,32,sPlaceholderButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[0][2] = newButtonSprite(RES_W/2 - 64,RES_H/2 - 32,sPlaceholderButton,function() {global.masterVolume -= 0.1; global.masterVolume = max(0,global.masterVolume);});
buttonSelect[0][1] = newButtonSprite(RES_W/2 - 64,RES_H/2,sPlaceholderButton,function() {global.musicVolume -= 0.1; global.musicVolume = max(0,global.musicVolume);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 64,RES_H/2 + 32,sPlaceholderButton,function() {global.sfxVolume -= 0.1; global.sfxVolume = max(0,global.sfxVolume);});
buttonSelect[1][2] = newButtonSprite(RES_W/2 + 64,RES_H/2 - 32,sPlaceholderButton,function() {global.masterVolume += 0.1; global.masterVolume = min(global.masterVolume,1);});
buttonSelect[1][1] = newButtonSprite(RES_W/2 + 64,RES_H/2,sPlaceholderButton,function() {global.musicVolume += 0.1; global.musicVolume = min(global.musicVolume,1);});
buttonSelect[1][0] = newButtonSprite(RES_W/2 + 64,RES_H/2 + 32,sPlaceholderButton,function() {global.sfxVolume += 0.1; global.sfxVolume = min(global.sfxVolume,1);});

event_inherited();