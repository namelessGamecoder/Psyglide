function fullSettingsSave(){
	saveGameSettings();
	saveVideoSettings();
	saveAudioSettings();
}
#region Game Settings
function saveGameSettings(){
	var settingsGame = ssave_get(ssaveGameSettings);
	
	settingsGame.set("textSpeed",global.cTextSpeed);
	settingsGame.set("playDeathAnim",global.cPlayDeathAnim);
	
	settingsGame.save();
}
function loadGameSettings(){
	var settingsGame = ssave_get(ssaveGameSettings);
	
	global.cTextSpeed = settingsGame.get("textSpeed",0.6);
	global.cPlayDeathAnim = settingsGame.get("playDeathAnim",true);
}
#endregion
#region Video Settings
function saveVideoSettings(){
	var settingsVideo = ssave_get(ssaveVideoSettings);
	
	settingsVideo.set("videoResolution",global.cResolution);
	settingsVideo.set("videoFullscreen",global.cFullscreen);
	
	settingsVideo.save();
}
function loadVideoSettings(){
	var settingsVideo = ssave_get(ssaveVideoSettings);
	
	global.cResolution = settingsVideo.get("videoResolution","1920x1080");
	global.cFullscreen = settingsVideo.get("videoFullscreen",false);
}
#endregion
#region Audio Settings
function saveAudioSettings(){
	var settingsAudio = ssave_get(ssaveAudioSettings);
	
	settingsAudio.set("volumeMaster",global.masterVolume);
	settingsAudio.set("volumeMusic",global.musicVolume);
	settingsAudio.set("volumeSFX",global.sfxVolume);
	
	settingsAudio.save();
}
function loadAudioSettings(){
	var settingsAudio = ssave_get(ssaveAudioSettings);
	
	global.masterVolume = settingsAudio.get("volumeMaster",1);
	global.musicVolume = settingsAudio.get("volumeMusic",1);
	global.sfxVolume = settingsAudio.get("volumeSFX",1);
}
#endregion