if (dir == IN){
	percent += (0.01 * tSpeed);
	if (percent >= 1){
		dir = OUT;
		script_execute(INScript);
	}
}
if (dir == OUT){
	percent -= (0.01 * tSpeed);
	if (percent <= 0){
		script_execute(OUTScript);
		instance_destroy();
	}
}