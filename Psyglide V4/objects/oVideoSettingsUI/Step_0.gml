buttonSelect[0][2] = newButtonSprite(64,32,sPlaceholderButton,function() {uiTransition(previousUI,TRANSITION_TYPE.REVERSE_PINHOLE,4);});
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 - 32,sPlaceholderButton,function() {global.cFullscreen = !global.cFullscreen;});
buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 + 32,sPlaceholderButton,function() {switch(global.cResolution){case("1280x720"):global.cResolution = "1920x1080" break; case("1920x1080"): global.cResolution = "1280x720" break;}});

event_inherited();