/// @description 
//Move to room
if (touched){
	room_goto(targetRoom);
	oPlayer.y = playerY + oPlayer.moveSpeed;
	
	//Reset
	touched = false;
	image_speed = 0;
	image_index = 0;
}