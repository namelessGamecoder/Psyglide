buttonSelect[0][0] = newButtonSprite(64,32,sPlaceholderButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[1][0] = newButtonSprite(RES_W/2 - 64,RES_H/2,sPlaceholderButton,function() {global.cTextSpeed -= 0.1; global.cTextSpeed = max(global.cTextSpeed,0);});
buttonSelect[2][0] = newButtonSprite(RES_W/2 + 64,RES_H/2,sPlaceholderButton,function() {global.cTextSpeed += 0.1; global.cTextSpeed = min(global.cTextSpeed,1);});

event_inherited();