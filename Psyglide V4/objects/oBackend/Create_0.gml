global.debugger = instance_create_layer(x,y,"Backend",oDebug);
global.cam = instance_create_layer(x,y,"Backend",oCamera);
global.music = instance_create_layer(x,y,"Backend",oMusicManager);

roomTransition(STARTING_ROOM,TRANSITION_TYPE.PINHOLE,2);