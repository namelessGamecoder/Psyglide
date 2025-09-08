draw_sprite_stretched(background,0,x1,y1,x2 - x1,y2 - y1);

if (x1 == x1To){
	if (dropShadowEnabled){
		scribble(text).starting_format(textFont,shadowColor).align(halign,valign).wrap((x2 - x1) - buff * 2,(y2 - y1) - buff).draw((x1+x2)/2+1,y1+8,typerShadow);
	}
	scribble(text).starting_format(textFont,textColor).align(halign,valign).wrap((x2 - x1) - buff * 2,(y2 - y1) - buff).draw((x1+x2)/2,y1+7,typer);
}

if (typer.get_state() >= 1){
	draw_sprite(complete,0,RES_W/2,y2 - sprite_get_height(complete) * 2 + wave(-4,4,2));
}