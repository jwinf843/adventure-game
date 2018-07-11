//Get map
var map = global.loadMap;

//Check room
if (room==map[? "room"]){
	//Player
	oPlayer.x = map[? "x"];
	oPlayer.y = map[? "y"];
	oPlayer.hp = map[? "hp"];
	oPlayer.stamina = map[? "stamina"];
	
	//Inventory
	ds_list_read(global.inv, map[? "inv"]);
	
	//World info
	global.time = map[? "time"];
	
	//Delete map
	ds_map_destroy(map);
}