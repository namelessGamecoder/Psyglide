///@desc plays a sound effect
///@param {Asset.GMSound} sfx The sound to play
///@return {Undefined} Returns Nothing
function sfxPlay(sfx){
	VinylPlay(sfx,false,global.sfxVolume*global.masterVolume);
}
///@desc starts a song using the music manager
///@param {Asset.GMSound} bgm The music to play
///@param {Bool} immediate Whether or not the song should play immediately or fade in (Default: false)
///@return {Undefined} Returns Nothing
function bgmPlay(bgm,immediate = false){
	if (bgm != noone){
		global.music.nextMusic = bgm;
		global.music.immediate = immediate;
	}
	else{
		global.music.stopPlaying = true;
	}
}