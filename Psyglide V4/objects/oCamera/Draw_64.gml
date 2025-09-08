switch (overlayType){
	case(OVERLAY_TYPE.FADE):
		drawSet(overlayColor,overlayAlpha * (overlayTimer / overlayTimerTotal));
		if (overlaySprite != sNone){
			drawSpriteStrechedGUI(overlaySprite,0);
		}
	break;
	case(OVERLAY_TYPE.SOLID):
		drawSet(overlayColor,overlayAlpha);
		if (overlaySprite != sNone){
			drawSpriteStrechedGUI(overlaySprite,0);
		}
	break;
}