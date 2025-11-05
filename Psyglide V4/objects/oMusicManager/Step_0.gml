if (currentMusic != nextMusic && immediate){
	if (!is_undefined(runningMusic)){
		VinylStop(runningMusic);
	}
	runningMusic = VinylPlay(nextMusic,true,global.musicVolume*global.masterVolume);
	currentMusic = nextMusic;
}
else if (currentMusic != nextMusic && !immediate){
	if (!is_undefined(runningMusic)){
		VinylFadeOut(runningMusic,0.1);
	}
	runningMusic = VinylPlayFadeIn(nextMusic,true,global.musicVolume*global.masterVolume);
	currentMusic = nextMusic;
}

if (global.musicVolume != currentVolume){
	VinylSetGain(runningMusic,global.musicVolume*global.masterVolume);
}

if (stopPlaying){
	VinylStop(runningMusic);
	runningMusic = undefined;
	stopPlaying = false;
}
