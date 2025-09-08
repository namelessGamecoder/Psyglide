///@desc puts a fading overlay over the camera
///@param {Asset.GMSprite} sprite The Sprite to overlay
///@param {Constant.Color} color The color to draw the sprite
///@param {Real} alpha The starting alpha value to draw the sprite
///@param {Real} seconds How long to fade the overlay
///@return {Undefined} Returns Nothing
function fadeCameraOverlay(sprite,color,alpha,seconds){
	with (global.cam){
		overlaySprite = sprite;
		overlayType = OVERLAY_TYPE.FADE;
		overlayColor = color;
		overlayAlpha = alpha;
		overlayTimerTotal = secondsToTicks(seconds);
		overlayTimer = overlayTimerTotal;
	}
}

///@desc puts a static overlay over the camera
///@param {Asset.GMSprite} sprite The Sprite to overlay
///@param {Constant.Color} color The color to draw the sprite
///@param {Real} alpha The alpha value to draw the sprite
///@param {Real} seconds How long to keep the overlay up
///@return {Undefined} Returns Nothing
function cameraOverlay(sprite,color,alpha,seconds){
	with (global.cam){
		overlaySprite = sprite;
		overlayType = OVERLAY_TYPE.SOLID;
		overlayColor = color;
		overlayAlpha = alpha;
		overlayTimerTotal = secondsToTicks(seconds);
		overlayTimer = overlayTimerTotal;
	}
}

///@desc shakes the camera around
///@param magnitude The magnitude of the shake (radius in pixels)
///@param seconds The length of the shake in seconds
///@return {Undefined} Returns Nothing
function screenShake(magnitude,seconds){
	with (global.cam){
		if (shakeRemain < magnitude){
			shakeLength = secondsToTicks(seconds);
			shakeMagnitude = magnitude;
			shakeRemain = shakeMagnitude;
		}
	}
}