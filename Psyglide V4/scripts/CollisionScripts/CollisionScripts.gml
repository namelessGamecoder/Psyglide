///@desc checks if a x and y position is intersecting a tile on a tile layer
///@param {Real} xPos The x position to check.
///@param {Real} yPos The y position to check.
///@param {String OR Id.Layer} tileLayer The tileset layer to check against.
function tile_meeting(xPos,yPos,tileLayer){
	var tileMap = layer_tilemap_get_id(tileLayer);

	var _x1 = tilemap_get_cell_x_at_pixel(tileMap, bbox_left + (xPos - x), y),
	    _y1 = tilemap_get_cell_y_at_pixel(tileMap, x, bbox_top + (yPos - y)),
	    _x2 = tilemap_get_cell_x_at_pixel(tileMap, bbox_right + (xPos - x), y),
	    _y2 = tilemap_get_cell_y_at_pixel(tileMap, x, bbox_bottom + (yPos - y));

	for(var _x = _x1; _x <= _x2; _x++){
	 for(var _y = _y1; _y <= _y2; _y++){
	    if(tile_get_index(tilemap_get(tileMap, _x, _y))){
	    return true;
	    }
	 }
	}

	return false;	
}