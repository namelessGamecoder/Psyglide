buttonSelect[0][1] = newButtonSprite(RES_W/2 - 160,RES_H/2 - 48,sNewGameButton,function(){roomTransition(rmTest,TRANSITION_TYPE.FADE,4);screenShake(20,0.25);sfxPlay(sfxConfirm);});
buttonSelect[0][0] = newButtonSprite(RES_W/2 - 160,RES_H/2,sLoadGameButton,function(){uiTransition(oLoadUI,TRANSITION_TYPE.WIPER,4);sfxPlay(sfxConfirm);});
buttonSelect[1][2] = newButtonSprite(RES_W/2 + 160, RES_H/2 - 48,sSettingsButton,function(){uiTransition(oSettingsUI,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[1][1] = newButtonSprite(RES_W/2 + 160, RES_H / 2, sAchievementsButton,function(){uiTransition(oAchievementUI,TRANSITION_TYPE.WIPEL,4);sfxPlay(sfxConfirm);});
buttonSelect[1][0] = newButtonSprite(RES_W/2 + 160, RES_H/2 + 48,sExitGameButton,function(){game_end();});
buttonSelect[2][0] = newButtonSprite(32,RES_H - 32,sSocialsItchButton,function(){url_open("https://namelessgamecoder.itch.io/");sfxPlay(sfxConfirm);});
buttonSelect[3][0] = newButtonSprite(64,RES_H - 32,sSocialsYouTubeButton,function(){url_open("https://www.youtube.com/@namelessGamecoder");sfxPlay(sfxConfirm);});
buttonSelect[4][0] = newButtonSprite(96,RES_H - 32,sSocialsWebsiteButton,function(){url_open("https://namelessgamecoder.github.io/");sfxPlay(sfxConfirm);});
buttonSelect[5][0] = newButtonSprite(128,RES_H - 32,sSocialsGitButton,function(){url_open("https://github.com/namelessGamecoder");sfxPlay(sfxConfirm);});

event_inherited();