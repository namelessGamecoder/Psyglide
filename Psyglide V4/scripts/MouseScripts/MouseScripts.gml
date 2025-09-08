///@desc checks to see if the mouse cursor is between four verticies
///@param {Real} x1 The top left x vertex
///@param {Real} y1 The top left y vertex
///@param {Real} x2 The bottom right x vertex
///@param {Real} y2 The bottom right y vertex
///@param {Bool} inclusive whether or not the check should be inclusive (default: true)
///@return {Bool}
function mouseIsBetween(x1,y1,x2,y2,inclusive = true){
	return (isBetween(x1,x2,mouse_x,inclusive) && isBetween(y1,y2,mouse_y,inclusive));
}