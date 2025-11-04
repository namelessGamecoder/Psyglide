buttonSelect[0][2] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
buttonSelect[0][1] = newButtonSprite(buttonLeftAlign(64, sSettingsDisplayResolutionButton),RES_H/2 + 32,sSettingsDisplayResolutionButton,function() {switch(global.cResolution){case("1280x720"):global.cResolution = "1920x1080" break; case("1920x1080"): global.cResolution = "1280x720" break;}});
buttonSelect[0][0] = newButtonSprite(buttonLeftAlign(64, sSettingsDisplayFullscreenButton),RES_H/2 - 32,sSettingsDisplayFullscreenButton,function() {global.cFullscreen = !global.cFullscreen;});

x+= scrollingSpeed;
y+= scrollingSpeed;

event_inherited();