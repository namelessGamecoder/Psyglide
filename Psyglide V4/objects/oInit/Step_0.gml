if (InitTimer > 0){
	InitTimer--;
}
else{
	switch(InitStage){
		case(0):
			CurrentStageSplash = StageOneSplash;
			if (CurrentStageSplash != sNone){
				InitTimerTotal = secondsToTicks(sprite_get_number(CurrentStageSplash) / sprite_get_speed(CurrentStageSplash));
				InitTimer = InitTimerTotal;
			}
			else{
				InitTimerTotal = secondsToTicks(StageOneTimer);
				InitTimer = InitTimerTotal;
			}
			
			//Game Settings
			
			loadGameSettings();
			
			//Video Settings
			
			loadVideoSettings();
			
			window_set_fullscreen(global.cFullscreen);
			
			switch (global.cResolution){
				case("1920x1080"):
					window_set_size(1920,1080);
				break;
				case("1280x720"):
					window_set_size(1280,720);
				break;
			}
			
			//Audio Settings
			
			loadAudioSettings();
			
			InitStage = 1;
		break;
		case(1):
			CurrentStageSplash = StageTwoSplash;
			if (CurrentStageSplash != sNone){
				InitTimerTotal = secondsToTicks(sprite_get_number(CurrentStageSplash) / sprite_get_speed(CurrentStageSplash));
				InitTimer = InitTimerTotal;
			}
			else{
				InitTimerTotal = secondsToTicks(StageTwoTimer);
				InitTimer = InitTimerTotal;
			}
			InitStage = 2;
		break;
		case(2):
			CurrentStageSplash = StageThreeSplash;
			if (CurrentStageSplash != sNone){
				InitTimerTotal = secondsToTicks(sprite_get_number(CurrentStageSplash) / sprite_get_speed(CurrentStageSplash));
				InitTimer = InitTimerTotal;
			}
			else{
				InitTimerTotal = secondsToTicks(StageThreeTimer);
				InitTimer = InitTimerTotal;
			}
			InitStage = 3;
		break;
		case(3):
			global.game = instance_create_layer(x,y,"Backend",oBackend);
			InitStage = 4;
		break;
	}
}