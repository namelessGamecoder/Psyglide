instance_create_layer(x,y,"Particles",partRuinsBossDeath);
instance_create_layer(x,y,"Particles",partBossDeathFire);
global.stop = false;
global.cam.bosscam = false;
global.cam.boss = noone;


roomTransitionMusChange(rmTitle,bgmTitleTheme,TRANSITION_TYPE.PINHOLE,2);