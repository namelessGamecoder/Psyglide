function playerCollisions(){
	var collide = PLAYER_COLLIDE_TYPE.NONE;
	
	#region Horizontal Collisions
	
	#region Object Based Collisions
	
	if (place_meeting(x + xspeed,y,opSolid)){
		while (place_empty(x + sign(xspeed),y,opSolid)){
			x += sign(xspeed);
		}
		xspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.DEATH
	}
	
	#endregion
	
	#region Tile Based Collisions
	
	
	
	#endregion
	
	if (collide == PLAYER_COLLIDE_TYPE.NONE){
		x += xspeed;
	}
	
	#endregion
	
	#region Vertical Collisions
	
	#region Object Based Collisions
	
	if (place_meeting(x,y + yspeed,opSolid)){
		while (place_empty(x,y + sign(yspeed),opSolid)){
			y += sign(yspeed);
		}
		yspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.DEATH
	}
	
	#endregion
	
	#region Tile Based Collisions
	
	
	
	#endregion
	
	if (collide == PLAYER_COLLIDE_TYPE.NONE){
		y += yspeed;
	}
	
	#endregion
	
	return collide;
}

function playerLockState(){
	//does nothing.
}
function playerStartState(){
	start = InputPressed(INPUT_VERB.START);
	if (start){
		state = playerFlyingState;
	}
}
function playerDeathState(){
	instance_destroy();
}
function playerFlyingState(){
	xspeed = 1.5;
	shoot = InputPressed(INPUT_VERB.SHOOT);
	fly = InputCheck(INPUT_VERB.FLY);
	
	if (fly){
		yspeed = -1.5;
	}
	else{
		yspeed = 1.5;
	}
	
	if (shoot){
		instance_create_layer(x + xspeed / 2, y, "Bullets", oPlayerBullet);
	}
	
	switch (playerCollisions()){
		case(PLAYER_COLLIDE_TYPE.NONE):
		default:
		//Do Nothing New
		break;
		case(PLAYER_COLLIDE_TYPE.DEATH):
			state = playerDeathState;
		break;
		
		
	}
	
}