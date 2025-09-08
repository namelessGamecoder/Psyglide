event_inherited();

INScript = function(){
	
	instance_destroy(caller);
	
	with (instance_create_layer(x,y,"UI",target)){
		previousUI = other.caller.object_index;
	}
	
};
OUTScript = function(){
	
	instance_destroy();
	
};