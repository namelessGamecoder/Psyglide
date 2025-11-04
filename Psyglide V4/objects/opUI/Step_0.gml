//Put Buttons Above This
if (!global.stop){
	
	if (InputPressed(INPUT_VERB.SYSCANCEL)){
		script_execute(closeUI);
	}
	
	if (InputPressed(INPUT_VERB.SYSRIGHT)){UIX++;}
	if (InputPressed(INPUT_VERB.SYSLEFT)){UIX--;}

	if (UIX > rowWidth - 1){UIX = 0;}else if(UIX < 0){UIX = rowWidth - 1;}

	if (InputPressed(INPUT_VERB.SYSUP)){UIY--;}
	if (InputPressed(INPUT_VERB.SYSDOWN)){UIY++;}

	UIY = clamp(UIY,-1,coulumnHeight[UIX] + 1);

	if (UIY > coulumnHeight[UIX] - 1){UIY = 0;}else if(UIY < 0){UIY = coulumnHeight[UIX] - 1;}
	
	if (buttonSelect[UIX][UIY][8]){
		if (InputCheck(INPUT_VERB.SYSACCEPT)){script_execute(buttonSelect[UIX][UIY][4]);}
	}
	else{
		if (InputPressed(INPUT_VERB.SYSACCEPT)){script_execute(buttonSelect[UIX][UIY][4]);}
	}

	for (var i = 0; i < rowWidth;i++){
		for (var j = 0; j < coulumnHeight[i];j++){
			buttonHover[i][j] = useButton(buttonSelect[i][j]);
		}
	}
}