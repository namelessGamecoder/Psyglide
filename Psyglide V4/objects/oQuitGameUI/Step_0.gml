buttonSelect[0][0] = newButtonSprite(RES_W/2 - 64,RES_H/2,sYesButton,function(){game_end();})
buttonSelect[1][0] = newButtonSprite(RES_W/2 + 64,RES_H/2,sNoButton,closeUI);

event_inherited();