if (active){
	drawSet(c_white,1);
	draw_sprite(sDebugIcon,0,32,32);
	if (roomHopper){
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_black,1);
		draw_text(RES_W/2 + 1, 33,"< " + roomNames[roomHopperSelection] + " >");
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_white,1);
		draw_text(RES_W/2, 32,"< " + roomNames[roomHopperSelection] + " >");
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_black,1);
		draw_text(RES_W/2 + 1, 65,"< Current Room: " + string_delete(room_get_name(room), 1, 2) + " >");
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_white,1);
		draw_text(RES_W/2, 64,"< Current Room: " + string_delete(room_get_name(room), 1, 2) + " >");
	}
	if (Location){
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_black,1);
		draw_text(RES_W/2 + 1, RES_H/2 + 1,"Current Location:\n< " + string(global.cam.x) + "," + string(global.cam.y) + " >");
		drawSetText(fntPlaceholder,fa_center,fa_middle,c_white,1);
		draw_text(RES_W/2, RES_H/2,"Current Location:\n< " + string(global.cam.x) + "," + string(global.cam.y) + " >");
	}
}