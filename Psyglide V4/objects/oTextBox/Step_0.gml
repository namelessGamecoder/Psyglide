if (fadeIn != 0){
	typer.in(global.cTextSpeed,fadeIn);
	typerShadow.in(global.cTextSpeed,fadeIn);
}

lerpProgress += (1 - lerpProgress) / 50;

x1 = lerp(x1,x1To,lerpProgress);
y1 = lerp(y1,y1To,lerpProgress);
x2 = lerp(x2,x2To,lerpProgress);
y2 = lerp(y2,y2To,lerpProgress);

if (InputPressed(INPUT_VERB.SYSACCEPT) && (x1 != x1To)){
	lerpProgress = 1;
}
else if (InputPressed(INPUT_VERB.SYSACCEPT) && (typer.get_state() < 1)){
	typer.skip();
	typerShadow.skip();
}
else if (InputPressed(INPUT_VERB.SYSACCEPT)){
	instance_destroy();
}