spawner.state = RuinsBossRightHover;
if (instance_exists(oPlayer)){
	spawner.xTo = oPlayer.x + RES_W/2 + random_range(-20,20);
	spawner.yTo = oPlayer.y + random_range(-16,16);
}