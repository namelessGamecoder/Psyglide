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
if (stopPlaying){
	VinylStop(runningMusic);
	runningMusic = undefined;
	stopPlaying = false;
}