function playerLockState(){
	//does nothing.
}
function playerStartState(){
	start = InputPressed(INPUT_VERB.START);
	if (start){
		state = playerFlyingState;
	}
}
function playerFlyingState(){
	xspeed = 2;
	shoot = InputPressed(INPUT_VERB.SHOOT);
	fly = InputCheck(INPUT_VERB.FLY);
	
	if (fly){
		yspeed = -2;
	}
	else{
		yspeed = 2;
	}
	
	if (shoot){
		instance_create_layer(x + xspeed / 2, y, "Bullets", oPlayerBullet);
	}
	
	x += xspeed;
	
	y += yspeed;
}