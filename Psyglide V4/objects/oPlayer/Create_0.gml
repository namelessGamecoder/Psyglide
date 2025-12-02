state = playerStartState;
xspeed = 0;
yspeed = 0;

start = false;

collisionMap = layer_tilemap_get_id("Collisions");

enum PLAYER_COLLIDE_TYPE{
	NONE,
	DEATH,
	TP
}