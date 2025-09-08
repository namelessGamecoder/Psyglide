function ssaveGameSettings() : SSave("game") constructor{
	add_value("textSpeed",SSAVE_TYPE.REAL,0.6);
}
function ssaveAudioSettings() : SSave("audio") constructor{
	add_value("volumeMaster",SSAVE_TYPE.REAL,1);
	add_value("volumeMusic",SSAVE_TYPE.REAL,1);
	add_value("volumeSFX",SSAVE_TYPE.REAL,1);
}
function ssaveVideoSettings() : SSave("video") constructor{
	add_value("videoFullscreen",SSAVE_TYPE.BOOLEAN,false);
	add_value("videoResolution",SSAVE_TYPE.STRING,"1920x1080");
}
function ssaveControllerSettings() : SSave("controls") constructor{
	
}