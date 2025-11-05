///@desc room movement function with added functionality to use a transition effect
///@param {Asset.GMRoom} targetRoom The room to move to
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function roomTransition(targetRoom,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(oRoomTransition)){
		with (instance_create_depth(x,y,-999,oRoomTransition)){
			target = targetRoom;
			type = effectType;
			tSpeed = transitionSpeed;
		}
	}
}

///@desc room movement function with added functionality to use a transition effect with added music changing functionality
///@param {Asset.GMRoom} targetRoom The room to move to
///@param {Asset.GMSound} music The new music to play
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function roomTransitionMusChange(targetRoom,music,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(oRoomTransition)){
		with (instance_create_depth(x,y,-999,oRoomTransition)){
			target = targetRoom;
			type = effectType;
			tSpeed = transitionSpeed;
		}
		bgmPlay(music,true);
	}
}

///@desc transition between different UI
///@param {Asset.GMObject} targetUI The UI to change to
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function uiTransition(targetUI,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(oUITransition)){
		with (instance_create_depth(x,y,-999,oUITransition)){
			caller = other;
			target = targetUI;
			type = effectType;
			tSpeed = transitionSpeed;
		}
	}
}

///@desc transition between UI from a non-UI object
///@param {Asset.GMObject} targetUI The UI to change to
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function safeUITransition(targetUI,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(opTransition)){
		with (instance_create_depth(x,y,-999,oDummyCaller)){
			callType = CALL_TYPE.UI_TRANSITION;
			call = uiTransition;
			caller = other;
			target = targetUI;
			type = effectType;
			tSpeed = transitionSpeed;
		}
	}
}

///@desc transition between different UI with added music changing functionality
///@param {Asset.GMObject} targetUI The UI to change to
///@param {Asset.GMSound} music The new music to play
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function uiTransitionMusChange(targetUI,music,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(oUITransition)){
		with (instance_create_depth(x,y,-999,oUITransition)){
			caller = other;
			target = targetUI;
			type = effectType;
			tSpeed = transitionSpeed;
		}
		bgmPlay(music,true);
	}
}

///@desc transition between UI from a non-UI object with added music changing functionality
///@param {Asset.GMObject} targetUI The UI to change to
///@param {Asset.GMSound} music The new music to play
///@param {Real} effectType The transition effect to use (defaults to shutter)
///@param {Real} transitionSpeed The speed at which the transition effect happens (default: 1)
///@return {Undefined} Returns Nothing
function safeUITransitionMusChange(targetUI,music,effectType = TRANSITION_TYPE.SHUTTER,transitionSpeed = 1){
	if (!instance_exists(opTransition)){
		with (instance_create_depth(x,y,-999,oDummyCaller)){
			callType = CALL_TYPE.UI_TRANSITION;
			call = uiTransition;
			caller = other;
			target = targetUI;
			type = effectType;
			tSpeed = transitionSpeed;
		}
		bgmPlay(music,true);
	}
}