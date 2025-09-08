if (!instance_exists(oTextQueue)){
	global.stop = false;
}
else{
	with (oTextQueue) {ticket--;}
}