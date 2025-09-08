///@desc creates a new text box object with the associated background with extra control over specific features
///@param {String} _text The text to be written
///@param {Asset.GMSprite} _background The background of the textbox (default: sPlaceholderTextboxBackground)
///@param {Asset.GMSprite} completeIcon The icon to show when the textbox is complete (default: sPlaceholderTextboxComplete)
///@param {Real} buffer The area around the edge of the text box that should not be drawn into (default: 10)
///@param {String} font The base font to draw the text with (default: TEXT_FONT)
///@param {Constant.Color} color The base color to draw the text with (default: c_white)
///@param {Constant.HAlign} _halign The horizontal alignment of the text to draw (default: fa_center)
///@param {Constant.VAlign} _valign The vertical alignment of the text to draw (default: fa_top)
///@param {Real} fade The fade effect as the words are written to the screen 0 for instant (default: 0)
///@param {Bool} dropShadow Whether or not the text should be drawn with a basic drop shadow (default: true)
///@param {Constant.Color} dropShadowColor The color of the basic drop shadow (default: c_black)
function newTextBoxExt(_text,_background = sPlaceholderTextboxBackground,completeIcon = sPlaceholderTextboxComplete,buffer = 10,font = TEXT_FONT,color = c_white,_halign = fa_center,_valign = fa_top,fade = 0,dropShadow = true,dropShadowColor = c_black){
	var obj;
	if (instance_exists(oTextBox)) {obj = oTextQueue;} else {obj = oTextBox;}
	with (instance_create_layer(0,0,"TextBox",obj)){
		buff = buffer;
		
		textFont = font;
		
		text = _text;
		textColor = color;
		
		halign = _halign;
		valign = _valign;
		
		fadeIn = fade;
		
		dropShadowEnabled = dropShadow;
		shadowColor = dropShadowColor;
		
		complete = completeIcon;
		background = _background;
		
		if (instance_exists(other)) {originInstance = other.id;} else {originInstance = noone;}
		
	}
}

///@desc creates a new text box object with the associated background
///@param {String} _text The text to be written
///@param {Asset.GMSprite} _background The background of the textbox (default: sPlaceholderTextboxBackground)
///@param {Asset.GMSprite} completeIcon The icon to show when the textbox is complete (default: sPlaceholderTextboxComplete)
///@param {Real} buffer The area around the edge of the text box that should not be drawn into (default: 10)
///@param {Bool} dropShadow Whether or not the text should be drawn with a basic drop shadow (default: true)
function newTextBox(_text,_background = sPlaceholderTextboxBackground,completeIcon = sPlaceholderTextboxComplete,buffer = 10,dropShadow = true){
		newTextBoxExt(_text,_background,completeIcon,buffer,TEXT_FONT,c_white,fa_center,fa_top,0,dropShadow);
}