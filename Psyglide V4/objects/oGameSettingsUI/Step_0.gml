buttonSelect[0][2] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,closeUI);
buttonSelect[0][0] = newButtonSprite(buttonLeftAlign(64,sSettingsGeneralTextSpeedButton),RES_H/2 - 32,sSettingsGeneralTextSpeedButton,function() {switch(global.cTextSpeed){case(0.25): global.cTextSpeed = 0.6; break;case(0.6): global.cTextSpeed = 1;break;case(1): global.cTextSpeed = 0.25 break;}sfxPlay(sfxConfirm);});
buttonSelect[0][1] = newButtonSprite(buttonLeftAlign(64,sSettingsGeneralDeathAnimation),RES_H/2 + 16,sSettingsGeneralDeathAnimation,function() {global.cPlayDeathAnim = !global.cPlayDeathAnim;sfxPlay(sfxConfirm);});

x+= scrollingSpeed;
y+= scrollingSpeed;

event_inherited();