/// @description 
//Exit
if (place_meeting(x, y, oPlayer)){
	room_goto(rmWorld);
	
	//Save doorID
	ini_open("temp.ini");

	ini_write_real("house", "doorID", doorID);

	ini_close();
}