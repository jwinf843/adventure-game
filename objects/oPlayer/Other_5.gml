/// @description 
//Save
ini_open("temp.ini");

ini_write_real("player", "hp", hp);
ini_write_real("player", "stamina", stamina);

ini_close();