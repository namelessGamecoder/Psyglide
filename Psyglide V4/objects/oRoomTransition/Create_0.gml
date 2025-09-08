event_inherited();

INScript = function(){
	
	room_goto(target);
	
};
OUTScript = function(){
	
	instance_destroy(oRoomTransition);
	
};