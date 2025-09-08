drawSet(c_white,1);

draw_sprite_tiled_ext(background,0,x,y,1,1,c_white,1);

drawSet(c_black,0.4);

draw_rectangle(0,0,RES_W,RES_H,false);

drawSet(c_white,1);

//Buttons
drawButton(buttonSelect[0][0],(((UIX == 0 && UIY[UIX] == 0) || buttonHover[0][0])));
drawButton(buttonSelect[0][1],(((UIX == 0 && UIY[UIX] == 1) || buttonHover[0][1]) * 3) + (global.cTextSpeed == 1 ? 2 : (global.cTextSpeed == 0.6 ? 1 : 0)));


scribble("[fa_left][scale,1.5]General Settings").draw(64,32);