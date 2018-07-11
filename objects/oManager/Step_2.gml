/// @description 
if (global.pause) exit;

with (all) depth = -bbox_bottom;

//Camera
var cW = camera_get_view_width(view_camera);
var cH = camera_get_view_height(view_camera);

var cX = oPlayer.x - cW/2;
var cY = oPlayer.y - cH/2;

//Clamp
cX = clamp(cX, 0, room_width - cW);
cY = clamp(cY, 0, room_height - cH);

//Small rooms
if (room_width<cW || room_height<cH){
	cX = room_width/2 - cW/2;
	cY = room_height/2 - cH/2;
}

camera_set_view_pos(view_camera, cX, cY);