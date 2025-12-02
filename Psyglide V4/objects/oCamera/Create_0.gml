//Camera
cam = view_camera[0];
follow = oPlayer;
camWHalf = RES_W/2;
camHHalf = RES_H/2;
xTo = xstart;
yTo = ystart;

bosscam = false;
boss = noone;

//Overlay
overlayColor = c_white;
overlayAlpha = 0;
overlaySprite = sNone;
overlayTimerTotal = 0;
overlayTimer = overlayTimerTotal;
overlayType = -1;

enum OVERLAY_TYPE{
	FADE,
	SOLID
}

//Screenshake

shakeLength = 0
shakeMagnitude = 0;
shakeRemain = shakeMagnitude;

//Resolution & Fullscreen
enum RESOLUTION{
	x1080,
	x720
}

pResolution = global.cResolution;
pFullscreen = global.cFullscreen;

fBackground = layer_get_id("Foreground");
bBackground = layer_get_id("Background");