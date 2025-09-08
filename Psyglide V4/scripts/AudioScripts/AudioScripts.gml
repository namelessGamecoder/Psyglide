///@desc plays a sound effect
///@param {Asset.GMSound} sfx The sound to play
///@return {Undefined} Returns Nothing
function sfxPlay(sfx){
	VinylPlay(sfx,false,global.sfxVolume*global.masterVolume);
}