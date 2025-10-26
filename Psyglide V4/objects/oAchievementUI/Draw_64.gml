//Background
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

scribble("[fa_center]Achievements").draw(RES_W/2,32);