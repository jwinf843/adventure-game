/// @description 
//Pause
if (keyboard_check_pressed(vk_escape)){
	//Toggle
	global.pause = !global.pause;
	
	//Pause
	if (global.pause){
		//Deactivate
		instance_deactivate_all(true);
		
		//Pause menu
		instance_create_layer(0, 0, "Instances", oPauseMenu);
	}
	else{
		//Activate
		instance_activate_all();
		
		//Pause menu
		instance_destroy(oPauseMenu);
	}
}

if (global.pause) exit;

//Time
global.time += 0.1;
global.time = global.time mod 24;