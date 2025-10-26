if (global.cPlayDeathAnim){
	var pd = instance_create_layer(x,y,"Player",oPlayerDeath);
	global.cam.follow = pd;
	global.stop = true;
}
else{
	roomTransition(room,TRANSITION_TYPE.DEATHFADE,8);
}