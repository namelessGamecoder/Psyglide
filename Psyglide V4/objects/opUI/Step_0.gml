//Put Buttons Above This
if (!global.stop){
	if (InputPressed(INPUT_VERB.SYSRIGHT)){UIX++;}
	if (InputPressed(INPUT_VERB.SYSLEFT)){UIX--;}

	if (UIX > rowWidth - 1){UIX = 0;}else if(UIX < 0){UIX = rowWidth - 1;}

	if (InputPressed(INPUT_VERB.SYSUP)){UIY[UIX]++;}
	if (InputPressed(INPUT_VERB.SYSDOWN)){UIY[UIX]--;}

	if (UIY[UIX] > coulumnHeight[UIX] - 1){UIY[UIX] = 0;}else if(UIY[UIX] < 0){UIY[UIX] = coulumnHeight[UIX] - 1;}

	if (InputPressed(INPUT_VERB.SYSACCEPT)){script_execute(buttonSelect[UIX][UIY[UIX]][4]);}

	for (var i = 0; i < rowWidth;i++){
		for (var j = 0; j < coulumnHeight[i];j++){
			buttonHover[i][j] = useButton(buttonSelect[i][j]);
		}
	}
}