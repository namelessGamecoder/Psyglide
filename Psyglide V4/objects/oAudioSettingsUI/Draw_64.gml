drawSet(c_white,1);

draw_sprite_tiled_ext(background,0,x,y,1,1,c_white,1);

drawSet(c_black,0.4);

draw_rectangle(0,0,RES_W,RES_H,false);

drawSet(c_white,1);

//Buttons
for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		drawButton(buttonSelect[i][j],(UIX == i && UIY == j) || buttonHover[i][j]);
	}
}

scribble("[fa_left][scale,1.5]Audio Settings").draw(64,32);

scribble("[fa_center][scale,1]Master Volume").draw(RES_W/2 - 96,RES_H/2 - 56);
draw_sprite(sSlidingDisplay,global.masterVolume*19,RES_W/2 - 96,RES_H/2 - 32);
scribble("[fa_center][scale,0.8]" + string(round(global.masterVolume * 100)) + " / 100").draw(RES_W/2 - 96,RES_H/2 - 24);

scribble("[fa_center][scale,1]Music Volume").draw(RES_W/2 - 96,RES_H/2);
draw_sprite(sSlidingDisplay,global.musicVolume*19,RES_W/2 - 96,RES_H/2 + 24);
scribble("[fa_center][scale,0.8]" + string(round(global.musicVolume * 100)) + " / 100").draw(RES_W/2 - 96,RES_H/2 + 32);

scribble("[fa_center][scale,1]Sound Effects Volume").draw(RES_W/2 - 96,RES_H/2 + 56);
draw_sprite(sSlidingDisplay,global.sfxVolume*19,RES_W/2 - 96,RES_H/2 + 80);
scribble("[fa_center][scale,0.8]" + string(round(global.sfxVolume * 100)) + " / 100").draw(RES_W/2 - 96,RES_H/2 + 88);