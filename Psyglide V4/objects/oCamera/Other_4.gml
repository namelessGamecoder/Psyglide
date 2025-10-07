cam = view_camera[0];
if (instance_exists(follow)){
	x = follow.x;
	y = follow.y;
}
else{
	x = room_width/2;
	y = room_height/2;
}