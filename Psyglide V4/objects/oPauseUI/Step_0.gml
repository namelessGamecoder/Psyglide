buttonSelect[0][0] = newButtonSprite(RES_W/2,RES_H/2 - 48,sResumeButton,closeUI);
buttonSelect[0][1] = newButtonSprite(RES_W/2,RES_H/2 - 16,sSettingsButton,function() {uiTransition(oSettingsUI,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[0][2] = newButtonSprite(RES_W/2,RES_H/2 + 16,sAchievementsButton,function() {uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[0][3] = newButtonSprite(RES_W/2,RES_H/2 + 48,sExitGameButton,function() {roomTransition(rmTitle,TRANSITION_TYPE.FADE,4);closePause = true;sfxPlay(sfxCancel);bgmPlay(noone);});

event_inherited();