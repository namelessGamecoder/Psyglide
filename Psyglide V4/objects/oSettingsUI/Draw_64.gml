//Background
drawSet(c_white,1);

draw_sprite_tiled_ext(background,0,x,y,2,2,c_white,1);

drawSet(c_black,0.4);

draw_rectangle(0,0,RES_W,RES_H,false);

drawSet(c_white,1);

//Buttons
for (var i = 0; i < rowWidth;i++){
	for (var j = 0; j < coulumnHeight[i];j++){
		drawButton(buttonSelect[i][j],(UIX == i && UIY[UIX] == j) || buttonHover[i][j]);
	}
}

scribble("[fa_center][scale,1.5]Settings").draw(RES_W/2,32);

switch(UIX){
	case(0):
		scribble("[fa_center]General Settings").draw(RES_W/2,RES_H/2 + 32);
	break;
	case(1):
		scribble("[fa_center]Audio Settings").draw(RES_W/2,RES_H/2 + 32);
	break;
	case(2):
		scribble("[fa_center]Video Settings").draw(RES_W/2,RES_H/2 + 32);
	break;
}