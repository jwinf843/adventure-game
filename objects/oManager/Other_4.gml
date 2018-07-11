/// @description 
//Camera
view_enabled = true;
view_visible[0] = true;

width = 480;
height = 270;
scale = 2;

var cam = camera_create_view(0, 0, width, height, 0, -1, -1, -1, width/2, height/2);
view_set_camera(0, cam);

window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);
display_set_gui_size(width, height);

//Tileset
global.Tiles_Walls = layer_tilemap_get_id("Tiles_Walls");

//Load
if (ds_exists(global.loadMap, ds_type_map)){
	loadGame();
}