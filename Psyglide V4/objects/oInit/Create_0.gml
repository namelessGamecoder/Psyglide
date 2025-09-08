InitStage = 0;
InitTimerTotal = 0;
InitTimer = InitTimerTotal;

StageOneSplash = sCreatorSplash;
StageTwoSplash = sNoSplash;
StageThreeSplash = sNoSplash;

StageOneTimer = 0;
StageTwoTimer = 0;
StageThreeTimer = 0;

CurrentStageSplash = StageOneSplash;

display_set_gui_size(RES_W,RES_H);

global.stop = false;
global.pause = false;

global.cResolution = "1920x1080"
global.cFullscreen = false;
global.masterVolume = 1;
global.musicVolume = 1;
global.sfxVolume = 1;
global.cTextSpeed = 1;

scribble_font_set_default("fntPlaceholder");