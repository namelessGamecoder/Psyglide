if (keyboard_check(vk_ralt) && keyboard_check_pressed(vk_numpad5)){
	active = !active;
}

if (active){
	if (keyboard_check_pressed(ord("R"))){game_restart();}
	if (keyboard_check_pressed(vk_escape)){game_end();}
	if (keyboard_check_pressed(ord("F"))){freecam = !freecam;}
	if (keyboard_check_pressed(ord("M"))){
		roomHopper = !roomHopper;
		
		for(var i = 0; i < 100; i++)
		{
		    roomNames[i] = string_delete(room_get_name(i), 1, 2);
		}
	}
	if (keyboard_check_pressed(ord("L"))){
		Location = !Location;
	}
	if (roomHopper){
		var left = (keyboard_check_pressed(vk_left));
		var right = (keyboard_check_pressed(vk_right));
		
		roomHopperSelection += right - left;
		roomHopperSelection = clamp(roomHopperSelection,0,100);
		
		if (keyboard_check_pressed(vk_enter)){
			roomTransition(roomHopperSelection,TRANSITION_TYPE.SHUTTER,10);
		}
		
	}
}