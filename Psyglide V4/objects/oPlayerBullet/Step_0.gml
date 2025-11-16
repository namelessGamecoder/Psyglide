x += xspeed;
trail.x = x;


if (place_meeting(x + xspeed,y,opSolid)){
	instance_destroy();
}

if (tilemap_get_at_pixel(collisionMap,x + xspeed,y)){
	instance_destroy();
}

if (isBetween(x,0,room_width + 128)){
	instance_destroy();
}