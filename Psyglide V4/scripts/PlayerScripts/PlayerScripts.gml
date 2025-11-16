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
	
	if (place_meeting(x + xspeed,y,oBreakableBrick)){
		while (place_empty(x + sign(xspeed),y,oBreakableBrick)){
			x += sign(xspeed);
		}
		xspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.DEATH
	}
	
	if (place_meeting(x + xspeed,y,oSolidTransition)){
		while (place_empty(x + sign(xspeed),y,oSolidTransition)){
			x += sign(xspeed);
		}
		xspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.TP;
	}
	
	#endregion
	
	#region Tile Based Collisions
	
	if (tilemap_get_at_pixel(collisionMap,x + xspeed,y)){
		switch (tilemap_get_at_pixel(collisionMap,x + xspeed,y)){
			case(1):
			//Solid Collisions
				collide = PLAYER_COLLIDE_TYPE.DEATH;
			break;
			case(2):
			//Solid-Non-Dangerous Collisions
				x -= x % TILE_SIZE;
			
				if (sign(xspeed) == 1) {x += TILE_SIZE - 1;}
				xspeed = 0;
			
				x += xspeed;
			
				collide = PLAYER_COLLIDE_TYPE.NONE;
			break;
			case(3):
			//enterance
				roomTransition(rmTest,TRANSITION_TYPE.FADE,4);
			break;
			default:
				
				collide = PLAYER_COLLIDE_TYPE.NONE;
				
			break;
		}
	}
	
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
	
	if (place_meeting(x,y + yspeed,oBreakableBrick)){
		while (place_empty(x,y + sign(yspeed),oBreakableBrick)){
			y += sign(yspeed);
		}
		yspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.DEATH
	}
	
	if (place_meeting(x,y + yspeed,oSolidTransition)){
		while (place_empty(x,y + sign(yspeed),oSolidTransition)){
			y += sign(yspeed);
		}
		yspeed = 0;
		collide = PLAYER_COLLIDE_TYPE.TP;
	}
	
	#endregion
	
	#region Tile Based Collisions
	
	if (tilemap_get_at_pixel(collisionMap,x,y + yspeed)){
		switch (tilemap_get_at_pixel(collisionMap,x,y + yspeed)){
			case(1):
			//Solid Collisions
				collide = PLAYER_COLLIDE_TYPE.DEATH;
			break;
			case(2):
			//Solid-Non-Dangerous Collisions
			
				y -= y % TILE_SIZE;
			
				if (sign(yspeed) == 1) {y += TILE_SIZE - 1;}
				ymove = 0;
			
				y += ymove;
			
				collide = PLAYER_COLLIDE_TYPE.NONE;
			
			break;
			default:
				
				collide = PLAYER_COLLIDE_TYPE.NONE;
				
			break;
		}
	}
	
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
function playerTPState(){
	
	var MT = instance_nearest(x,y,oSolidTransition);
	roomTransition(MT.goTo,MT.transitEffect,4);
	
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
		with (instance_create_layer(x + 8 + xspeed, y, "Bullets", oPlayerBullet)){
			xspeed = other.xspeed + 2;
		}
	}
	
	switch (playerCollisions()){
		case(PLAYER_COLLIDE_TYPE.NONE):
		default:
		//Do Nothing New
		break;
		case(PLAYER_COLLIDE_TYPE.DEATH):
			state = playerDeathState;
		break;
		case(PLAYER_COLLIDE_TYPE.TP):
			state = playerTPState
		break;
	}
	
}