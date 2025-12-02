#region Ruins Boss

#region Helper Functions

function RuinsBossMovementAnimation(){
	if (instance_exists(oPlayer)){
		if (x > oPlayer.x && point_distance(x,y,oPlayer.x,oPlayer.y) >= point_distance(oPlayer.x + RES_W/8,oPlayer.y,oPlayer.x,oPlayer.y)){
			image_index = 3;
		}
		else if (x < oPlayer.x && point_distance(x,y,oPlayer.x,oPlayer.y) >= point_distance(oPlayer.x + RES_W/8,oPlayer.y,oPlayer.x,oPlayer.y)){
			image_index = 1;
		}
		else if (point_distance(x,y,oPlayer.x,oPlayer.y) >= point_distance(oPlayer.x + RES_W/32,oPlayer.y,oPlayer.x,oPlayer.y)){
			image_index = 2;
		}
	}
}

function bossBulletCheck(){
	bullet = instance_place(x,y,oPlayerBullet);

	if (bullet != noone){
		instance_destroy(bullet);
		hp--;
	}
}

#endregion

#region States

#region Hovering
function RuinsBossRightHover(){
	image_index = 4;
	if (approximatelyEquals(x,xTo) && approximatelyEquals(y,yTo)){
		if (chance(0.8)){
			if (instance_exists(oPlayer)){
				xTo = oPlayer.x + RES_W/2 + random_range(-20,20);
				yTo = oPlayer.y + random_range(-16,16);
			}
		}
		else if (chance(0.6)){
			state = RuinsBossFistAttack;
		}
		else if (chance(0.3)){
			state = RuinsBossBlockAttack;
		}
		else if (chance(0.2)){
			if (instance_exists(oPlayer)){
				xTo = oPlayer.x - RES_W/2 - random_range(-20,20);
				yTo = oPlayer.y + random_range(-16,16);
			}
			state = RuinsBossLeftMove;
		}
	}
	
	bossBulletCheck();
	
	if (hp <= 0){
		state = RuinsBossDeathState;
	}
	
	x = approach(x,xTo,bSpeed * 1.5);
	y = approach(y,yTo,bSpeed);
	
}

function RuinsBossLeftHover(){
	image_index = 0;
	if (approximatelyEquals(x,xTo) && approximatelyEquals(y,yTo)){
		if (chance(0.35)){
			if (instance_exists(oPlayer)){
				xTo = oPlayer.x - RES_W/2 - random_range(-20,20);
				yTo = oPlayer.y + random_range(-16,16);
			}
		}
		else{
			switch(irandom(1)){
				case(1):
					if (instance_exists(oPlayer)){
						xTo = oPlayer.x + RES_W/2 + random_range(-20,20);
						yTo = oPlayer.y + random_range(-16,16);
					}
					state = RuinsBossRightMove;
				break;
				default:
				break;
			}
		}
	}
	
	bossBulletCheck();
	
	if (hp <= 0){
		state = RuinsBossDeathState;
	}
	
	x = approach(x,xTo,bSpeed * 1.5);
	y = approach(y,yTo,bSpeed);
	
}
#endregion

#region Moving
function RuinsBossLeftMove(){
	depth = layer_get_depth("Dodge");
	if (approximatelyEquals(x,xTo) && approximatelyEquals(y,yTo)){
		if (instance_exists(oPlayer)){
			xTo = oPlayer.x - RES_W/4 - random_range(-20,20);
			yTo = oPlayer.y + random_range(-16,16);
			depth = layer_get_depth("NPC");
			state = RuinsBossLeftHover;
		}
	}
	
	RuinsBossMovementAnimation();
	
	x = approach(x,xTo,bSpeed * 3);
	y = approach(y,yTo,bSpeed);
	
}

function RuinsBossRightMove(){
	depth = layer_get_depth("Dodge");
	if (approximatelyEquals(x,xTo) && approximatelyEquals(y,yTo)){
		if (instance_exists(oPlayer)){
			xTo = oPlayer.x + RES_W/4 + random_range(-20,20);
			yTo = oPlayer.y + random_range(-16,16);
			depth = layer_get_depth("NPC");
			state = RuinsBossRightHover;
		}
	}
	
	RuinsBossMovementAnimation();
	
	x = approach(x,xTo,bSpeed * 3);
	y = approach(y,yTo,bSpeed);
	
}
#endregion

#region Attacking

function RuinsBossFistAttack(){
	if (instance_exists(oPlayer)){
		x = oPlayer.x + (RES_W / 2);
		y = oPlayer.y;
	}
	if (!instance_exists(oRuinsBossHand)){
		with (instance_create_layer(x - 64,y,"NPC",oRuinsBossHand)){
			spawner = other.id;
		}
	}
}

function RuinsBossBlockAttack(){
	if (instance_exists(oPlayer)){
		x = oPlayer.x + (RES_W / 2);
		y = oPlayer.y;
	}
	if (!instance_exists(oRuinsBossBlockHand)){
		var i = 0;
		while ((round(y) + RES_H/2 + i) % 4 != 0){
			i++;
		}
		with (instance_create_layer(round(x) - 64,round(y) + RES_H/2 + i,"NPC",oRuinsBossBlockHand)){
			spawner = other.id;
		}
	}
}

#endregion

function RuinsBossDeathState(){
	instance_destroy();
}

#endregion

#endregion