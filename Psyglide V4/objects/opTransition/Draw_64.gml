switch(type){
	case(TRANSITION_TYPE.SHUTTER):
		drawSet(c_black,1);
		draw_rectangle(0,0,RES_W,(RES_H/2) * percent,false);
		draw_rectangle(0,RES_H - (RES_H/2) * percent,RES_W,RES_H,false);
	break;
	case(TRANSITION_TYPE.WIPER):
		drawSet(c_black,1);
		if (dir == IN){
			draw_rectangle(0,0,RES_W * percent,RES_H,false);
		}
		else{
			draw_rectangle(RES_W * (1-percent),0,RES_W,RES_H,false);
		}
	break;
	case(TRANSITION_TYPE.WIPEL):
		drawSet(c_black,1);
		if (dir == IN){
			draw_rectangle(RES_W * (1-percent),0,RES_W,RES_H,false);
		}
		else{
			draw_rectangle(0,0,RES_W * percent,RES_H,false);
		}
	break;
	case(TRANSITION_TYPE.WIPEU):
		drawSet(c_black,1);
		if (dir == IN){
			draw_rectangle(0,RES_H * (1-percent),RES_W,RES_H,false);
		}
		else{
			draw_rectangle(0,0,RES_W,RES_H * percent,false);
		}
	break
	case(TRANSITION_TYPE.WIPED):
		drawSet(c_black,1);
		if (dir == IN){
			draw_rectangle(0,0,RES_W,RES_H * percent,false);
		}
		else{
			draw_rectangle(0,RES_H * (1-percent),RES_W,RES_H,false);
		}
	break;
	case(TRANSITION_TYPE.PINHOLE):
		drawSet(c_black,1);
		draw_rectangle(0,0,RES_W,RES_H / 2 - (sprite_get_width(sPinholeOverlay) * ((RES_W / sprite_get_width(sPinholeOverlay)) * (1 - percent)) / 2),false);
		draw_rectangle(0,0,(RES_W/2) * percent,RES_H,false);
		draw_rectangle(0,RES_H - (RES_H / 2 - (sprite_get_width(sPinholeOverlay) * ((RES_W / sprite_get_width(sPinholeOverlay)) * (1 - percent)) / 2)),RES_W,RES_H,false);
		draw_rectangle(RES_W - (RES_W/2) * percent,0,RES_W,RES_H,false);
		draw_sprite_ext(sPinholeOverlay,0,RES_W/2,RES_H/2,(RES_W / sprite_get_width(sPinholeOverlay)) * (1 - percent),(RES_W / sprite_get_width(sPinholeOverlay)) * (1 - percent),0,c_black,1);
	break;
	case(TRANSITION_TYPE.REVERSE_PINHOLE):
		drawSet(c_black,1);
		draw_circle(RES_W/2,RES_H/2,RES_W * percent,false);
	break;
	case(TRANSITION_TYPE.FADE):
		drawSet(c_black,percent);
		draw_rectangle(0,0,RES_W,RES_H,false);
		drawSet(c_white,1);
	break;
}