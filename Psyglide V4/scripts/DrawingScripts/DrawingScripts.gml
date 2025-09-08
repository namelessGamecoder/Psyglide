///@description draws the selected sprite centered and streched according to the current game Resolution
///@param {Asset.GMSprite} sprite The Sprite to draw
///@param {Real} index The sub-image of the sprite to draw (enter -1 to draw the current subframe of the object)
///@return {Undefined} Returns Nothing
function drawSpriteStrechedGUI(sprite,index){
	draw_sprite_ext(sprite,index,RES_W/2,RES_H/2,RES_W/sprite_get_width(sprite),RES_H/sprite_get_height(sprite),0,draw_get_color(),draw_get_alpha());
}

///@description sets the color and alpha for drawing functions
///@param {Constant.Color} color The color to draw with
///@param {Real} alpha The alpha to draw with
///@return {Undefined} Returns Nothing
function drawSet(color,alpha){
	draw_set_color(color);
	draw_set_alpha(alpha);
}

///@desc makes a cycling rainbow color that can be applied to color functions
///@param {Real} seconds The time it takes to cycle through all of the colors
///@return {Constant.Color}
function makeColorRainbow(seconds){
	return make_color_hsv(wave(0,255,seconds),255,255)
}

///@description an extension of drawSet that also sets variables for drawing text
///@param {Asset.GMFont} font The font to draw with
///@param {Constant.HAlign} hAlign The horizontal alignment for the text
///@param {Constant.VAlign} vAlign The vertical alignment for the text
///@param {Constant.Color} color The color to draw with (defaults to white)
///@param {Real} alpha The alpha to draw with (defaults to 1 (fully opaque))
///@return {Undefined} Returns Nothing
function drawSetText(font,hAlign,vAlign,color = c_white,alpha = 1){
	draw_set_font(font);
	draw_set_halign(hAlign);
	draw_set_valign(vAlign);
	drawSet(color,alpha);
}