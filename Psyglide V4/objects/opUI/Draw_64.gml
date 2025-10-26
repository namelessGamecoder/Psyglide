//Background
drawSet(c_white,1)
draw_sprite_ext(background,0,RES_W/2,RES_H/2,RES_W/sprite_get_width(background),RES_H/sprite_get_height(background),0,c_white,1);
//Buttons
for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		drawButton(buttonSelect[i][j],(UIX == i && UIY == j) || buttonHover[i][j]);
	}
}
//Other Assets