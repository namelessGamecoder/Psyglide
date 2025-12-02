if (x % 16 == 0){
	y -= yspeed;
	if (approximatelyEquals(round(y) % 16, 0)){
		instance_create_layer(x,y,"Solids",oBreakableBrick);
	}
}
else{
	x += 1;
}
if (instance_exists(oPlayer)){
	if (y < oPlayer.y - RES_H / 2){
		instance_destroy();
	}
}
else{
	instance_destroy();
}