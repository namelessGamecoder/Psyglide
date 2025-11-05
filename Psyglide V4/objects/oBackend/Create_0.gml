global.debugger = instance_create_layer(x,y,"Backend",oDebug);
global.cam = instance_create_layer(x,y,"Backend",oCamera);
global.music = instance_create_layer(x,y,"Backend",oMusicManager);

roomTransitionMusChange(STARTING_ROOM,bgmTitleTheme,TRANSITION_TYPE.PINHOLE,2);