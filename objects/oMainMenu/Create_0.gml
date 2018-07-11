/// @description 
global.loadMap = -1;

//Menu
enum mp{
	new,
	load,
	quit
}

menuText[mp.new] = "New";
menuText[mp.load] = "Load";
menuText[mp.quit] = "Quit";

menuSelected = 0;
menuOptions = array_length_1d(menuText);

//Resolution
width = 480;
height = 270;
scale = 2;

window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);
display_set_gui_size(width, height);

room_width = width;
room_height = height;