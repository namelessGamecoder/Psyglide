///@desc creates a new "button" array using rectangle verticies
///@param {Real} x1 The top left x vertex
///@param {Real} y1 The top left y vertex
///@param {Real} x2 The bottom right x vertex
///@param {Real} y2 The bottom right y vertex
///@param {Function} funct The button's function
///@return {Array<Any>} Returns button array
function newButtonRectangle(x1,y1,x2,y2,funct){
	var data;
	
	data[4] = funct
	data[3] = (global.cam.y - RES_H/2) + y2;
	data[2] = (global.cam.x - RES_W/2) + x2;
	data[1] = (global.cam.y - RES_H/2) + y1;
	data[0] = (global.cam.x - RES_W/2) + x1;
	
	return data;
}

///@desc creates a new "button" array using a sprite
///@param {Real} xx The center x of the sprite
///@param {Real} yy The center y of the sprite
///@param {Asset.GMSprite} sprite The sprite to draw values from
///@param {Function} funct The button's function
///@return {Array<Any>} Returns button array
function newButtonSprite(xx,yy,sprite,funct){
	var data;
	
	data[8] = false;
	data[7] = sprite;
	data[6] = yy;
	data[5] = xx;
	data[4] = funct;
	data[3] = (global.cam.y - RES_H/2) + yy + sprite_get_height(sprite)/2;
	data[2] = (global.cam.x - RES_W/2) + xx + sprite_get_width(sprite)/2;
	data[1] = (global.cam.y - RES_H/2) + yy - sprite_get_height(sprite)/2;
	data[0] = (global.cam.x - RES_W/2) + xx - sprite_get_width(sprite)/2;
	
	return data;
}

///@desc creates a new "button" array using a sprite
///@param {Real} xx The center x of the sprite
///@param {Real} yy The center y of the sprite
///@param {Asset.GMSprite} sprite The sprite to draw values from
///@param {Function} funct The button's function
///@return {Array<Any>} Returns button array
function newHoldButtonSprite(xx,yy,sprite,funct){
	var data;
	
	data[8] = true;
	data[7] = sprite;
	data[6] = yy;
	data[5] = xx;
	data[4] = funct;
	data[3] = (global.cam.y - RES_H/2) + yy + sprite_get_height(sprite)/2;
	data[2] = (global.cam.x - RES_W/2) + xx + sprite_get_width(sprite)/2;
	data[1] = (global.cam.y - RES_H/2) + yy - sprite_get_height(sprite)/2;
	data[0] = (global.cam.x - RES_W/2) + xx - sprite_get_width(sprite)/2;
	
	return data;
}

///@desc uses a button array to animate and test button logic
///@param {Array<Any>} buttonArray The array of values to define the area of the button
///@param {Function} buttonFunction The code to be executed when the button is pressed
///@return {Bool} Whether or not the button is being hovered over
function useButton(buttonArray){
	if (mouseIsBetween(buttonArray[0],buttonArray[1],buttonArray[2],buttonArray[3],true)){
		
		if (buttonArray[8]){
			if (mouse_check_button(mb_left)){
				script_execute(buttonArray[4]);
			}
		}else{
			if (mouse_check_button_pressed(mb_left)){
				script_execute(buttonArray[4]);
			}
		}
		
		return true;
	}
	return false;
}

///@desc draws a sprite button to the screen
///@param {Array<Any>} buttonArray The array of values to define the area and look of the button
///@param {Bool} buttonHover Whether or not the button is being hovered over
function drawButton(buttonArray,buttonHover){
	draw_sprite(buttonArray[7],buttonHover,buttonArray[5],buttonArray[6]);
}