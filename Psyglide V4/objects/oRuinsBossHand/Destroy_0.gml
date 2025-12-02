instance_create_layer(x,y,"Particles",partBreakableBlock);
if (fire != noone){
	instance_create_layer(x,y,"Particles",partBossDeathFire);
	instance_destroy(fire);
}
spawner.state = RuinsBossRightHover;
if (instance_exists(oPlayer)){
	spawner.xTo = oPlayer.x + RES_W/2 + random_range(-20,20);
	spawner.yTo = oPlayer.y + random_range(-16,16);
}