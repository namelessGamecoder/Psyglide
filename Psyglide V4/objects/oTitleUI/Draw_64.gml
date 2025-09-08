event_inherited();

draw_sprite(sTitleText,0,RES_W/2,RES_H/2 - 96);
scribble("[fa_left][scale,1][c_black]Ver. " + global.versionNumber).draw(RES_W - 63,RES_H - 31);
scribble("[fa_left][scale,1]Ver. " + global.versionNumber).draw(RES_W - 64,RES_H - 32);