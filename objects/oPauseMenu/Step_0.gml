/// @description 
menuSelectedPrev = menuSelected;

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

//Sound
if (menuSelected != menuSelectedPrev){
	audio_play_sound(sndMenu, 1, false);
}

//Select
if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)){
	switch (menuSelected){
		case op.resume:
			instance_activate_all();
			global.pause = false;
			
			instance_destroy();
		break;
		
		case op.save:
			//Create map
			var map = ds_map_create();
			
			//Reactivate player
			instance_activate_object(oPlayer);
			
			//Save player info
			map[? "x"] = oPlayer.x;
			map[? "y"] = oPlayer.y;
			map[? "hp"] = oPlayer.hp;
			map[? "stamina"] = oPlayer.stamina;
			
			//Save inventory
			map[? "inv"] = ds_list_write(global.inv);
			
			//Save world info
			map[? "room"] = room;
			map[? "time"] = global.time;
			
			//Save map and delete it
			ds_map_secure_save(map, "savefile");
			ds_map_destroy(map);
			
			//Deactivate player
			instance_deactivate_object(oPlayer);
			
			//Text
			menuText[op.save] = "Game Saved.";
			alarm[0] = 30;
		break;
		
		case op.quit:
			game_restart();
		break;
	}
}