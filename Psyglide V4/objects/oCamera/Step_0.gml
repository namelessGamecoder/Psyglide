//Resolution
if (keyboard_check_pressed(vk_f11)){
	global.cFullscreen = !global.cFullscreen;
	saveVideoSettings();
}

if (pFullscreen != global.cFullscreen){
	window_set_fullscreen(global.cFullscreen);
	pFullscreen = global.cFullscreen;
}

if (pResolution != global.cResolution){
	switch (global.cResolution){
		case("1920x1080"):
			window_set_size(1920,1080);
			pResolution = global.cResolution;
		break;
		case("1280x720"):
			window_set_size(1280,720);
			pResolution = global.cResolution;
		break;
	}
}

//Camera
if (global.debugger.freecam){
	xTo += mouse_x - x;
	yTo += mouse_y - y;
}
else if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}
else{
	xTo = room_width/2;
	yTo = room_height/2;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

if (!global.debugger.freecam){
	x = clamp(x,camWHalf,room_width - camWHalf);
	y = clamp(y,camHHalf,room_width - camHHalf);
}

//Screenshake
if (shakeRemain > 0){
	x += random_range(-shakeRemain,shakeRemain);
	y += random_range(-shakeRemain,shakeRemain);
	
	shakeRemain = max(0,shakeRemain - ((1 / shakeLength) * shakeMagnitude));
}

//Camera
camera_set_view_pos(cam,x - camWHalf, y - camHHalf);

//Overlay
if (overlayTimer > 0){
	overlayTimer--;
}
else{
	overlaySprite = sNone;
	overlayTimerTotal = 0;
}