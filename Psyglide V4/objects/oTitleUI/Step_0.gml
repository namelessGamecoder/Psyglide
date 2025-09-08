buttonSelect[0][1] = newButtonSprite(RES_W/2 - 96,RES_H/2 - 32,sPlaceholderButton,function(){roomTransition(rmTest,TRANSITION_TYPE.FADE,4);screenShake(20,0.25);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 96,RES_H/2 + 32,sPlaceholderButton,function(){uiTransition(oLoadUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[1][0] = newButtonSprite(RES_W/2, RES_H / 2 + 32, sPlaceholderButton,function(){uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEU,4)});
buttonSelect[2][1] = newButtonSprite(RES_W/2 + 96, RES_H/2 - 32,sPlaceholderButton,function(){uiTransition(oSettingsUI,TRANSITION_TYPE.WIPER,4)});
buttonSelect[2][0] = newButtonSprite(RES_W/2 + 96, RES_H/2 + 32,sPlaceholderButton,function(){game_end();});

event_inherited();