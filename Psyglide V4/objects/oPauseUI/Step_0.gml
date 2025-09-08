buttonSelect[0][3] = newButtonSprite(RES_W/2,RES_H/2 - 48,sResumeButton,function() {roomTransition(room,TRANSITION_TYPE.FADE,4); closePause = true;});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 - 16,sSettingsButton,function() {uiTransition(oSettingsUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 + 16,sAchievementsButton,function() {uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEL,4);});
buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 + 48,sExitGameButton,function() {roomTransition(rmTitle,TRANSITION_TYPE.FADE,4);closePause = true;});

event_inherited();