/// @function collision
/// @arg xAdd
/// @arg yAdd

//Args
var _xAdd = argument[0];
var _yAdd = argument[1];

//Object Collision
var objCol = place_meeting(x + _xAdd, y + _yAdd, oCollision);

//Tile collision
var tileCol = tilemap_get_at_pixel(global.Tiles_Walls, bbox_left+_xAdd, bbox_top+_yAdd) or 
			  tilemap_get_at_pixel(global.Tiles_Walls, bbox_right+_xAdd, bbox_top+_yAdd) or 
			  tilemap_get_at_pixel(global.Tiles_Walls, bbox_right+_xAdd, bbox_bottom+_yAdd) or 
			  tilemap_get_at_pixel(global.Tiles_Walls, bbox_left+_xAdd, bbox_bottom+_yAdd);

//Out of bounds
var outOfBounds = x + _xAdd < 0 || x + _xAdd > room_width || y + _yAdd < 0 || y + _yAdd > room_height;

//Return
return objCol or tileCol or outOfBounds;