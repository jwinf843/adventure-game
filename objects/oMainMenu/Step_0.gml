/// @description 
//Menu option change
var menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menuSelected += menuMove;

if (menuSelected >= menuOptions) menuSelected = 0;
if (menuSelected < 0) menuSelected = menuOptions - 1;

//Mouse input
menuX = 32;
menuY = 32;

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var mouseOption = (mouseY - menuY) div 32;

if (mouseOption >= 0 && mouseOption < menuOptions){
	 menuSelected = mouseOption;
}

//Select
if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)){
	switch (menuSelected){
		case mp.new:
			room_goto(rmWorld);
			
			//Add oManager
			instance_create_layer(0, 0, "Instances", oManager);
		break;
		
		case mp.load:
			if (file_exists("savefile")){
				//Load map
				global.loadMap = ds_map_secure_load("savefile");
		
				//Change room
				var loadRoom = global.loadMap[? "room"];
				room_goto(loadRoom);
				
				//Add oManager
				instance_create_layer(0, 0, "Instances", oManager);
			}
			else{
				menuText[mp.load] = "No save found";
				alarm[0] = 30;
			}
		break;
		
		case mp.quit:
			game_end();
		break;
	}
}