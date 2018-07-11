/// @description 
var mX = device_mouse_x_to_gui(0);
var mY = device_mouse_y_to_gui(0);
var mIn = point_in_rectangle(mX, mY, x, y, x+rectWidth, y+rectHeight);

if (mIn)
	mCell = (mX-x+scroll) div cellSize;
else
	mCell = -1;
	
//Clicked
if (mCell >= 0 && mCell < ds_list_size(global.inv) && mouse_check_button_pressed(mb_left)){
	var arr = global.inv[| mCell];
	
	var item = arr[0];
	
	//Use item
	var success = true;
	
	switch(item){
		case item.apple:
			oPlayer.hp += 50;
		break;
		
		case item.mushroom:
			oPlayer.stamina += 50;
		break;
		
		case item.coin:
			success = false;
		break
	}
	
	//Reduce item
	if (success){
		arr[@ 1]--;
	
		if (arr[1] <= 0){
			ds_list_delete(global.inv, mCell);
		}
	}
}

//Scroll
scroll += (mouse_wheel_down() - mouse_wheel_up()) * 16;

scroll = max(scroll, 0);