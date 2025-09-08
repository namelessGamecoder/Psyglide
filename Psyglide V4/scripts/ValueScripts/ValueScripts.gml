///@desc check if a value is between two other values
///@param {Real} valueOne The lower bound
///@param {Real} valueTwo The upper bound
///@param {Real} valueThree The value to check
///@param {Bool} inclusive Whether or not the check should be inclusive (default: true)
///@return {Bool}
function isBetween(valueOne, valueTwo, valueThree, inclusive = true){
	if (inclusive){
		if ((valueOne <= valueThree) && (valueThree <= valueTwo)){
			return true;
		}
	}
	else{
		if ((valueOne < valueThree) && (valueThree < valueTwo)){
			return true;
		}
	}
	return false;
}

///@desc approaches a value without going over it
///@param {Real} value The value to change
///@param {Real} valueTo The value to go to
///@param {Real} amount The rate of change to apply to the value
///@return {Real}
function approach(value,valueTo,amount)
{
 
    if (value < valueTo)
    {
        value += amount;
    
        if (value > valueTo)
            return valueTo;
 
    }
    else
    {
        value -= amount;
        if (value < valueTo)
            return valueTo;
 
    }
    return value;
}

///@desc moves a value fluidly between two other values over a set amount of seconds
///@param {Real} from The minimum value of the range
///@param {Real} to The maximum value of the range
///@param {Real} duration The time in seconds to go between from and to
///@param {Real} offset Offset to the starting value (default:0)
///@return {Real}
function wave(from,to,duration,offset = 0){
	var range = (to - from) * 0.5;
	return from + range + sin((((current_time * 0.001) + duration * offset) / duration) * (pi*2)) * range;

}

///@desc wraps a value around a set of two values
///@param {Real} value The value to be wrapped
///@param {Real} minimum The minimum value that the value can be
///@param {Real} maximum The maximum value that the value can be
///@return {Real}
function wrapValue(value, minimum, maximum){
	if (value mod 1 == 0)
	{
	    while (value > maximum || value < minimum)
	    {
	        if (value > maximum)
	            value += minimum - maximum - 1;
	        else if (value < minimum)
	            value += maximum - minimum + 1;
	    }
	    return(value);
	}
	else
	{
	    var vOld = value + 1;
	    while (value != vOld)
	    {
	        vOld = value;
	        if (value < minimum)
	            value = maximum - (minimum - value);
	        else if (value > maximum)
	            value = minimum + (value - maximum);
	    }
	    return(value);
	}
}

///@desc rolls a random chance based on a perecent given
///@param {Real} percent The percent value that should roll true
///@return {Bool}
function chance(percent){
	return (percent > random(1));
}

///@desc checks if a value is approximately equal to a checking value
///@param {Real} value The value to check
///@param {Real} checkValue The value to check against
///@param {Real} epsilon The value range to check (default 0.1)
///@return {Bool}
function approximatelyEquals(value,checkValue,epsilon = 0.1){
	return isBetween(checkValue - epsilon, checkValue + epsilon, value, true);
}