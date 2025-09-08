///@description Converts a value of seconds into game ticks
///@param {real} seconds The number of seconds to convert into ticks
///@return {real} ticks Seconds converted into game ticks
function secondsToTicks(seconds){
	return (seconds * FPS);
}