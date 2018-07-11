/// @description 
//Player collision
var xDist = abs(x - oPlayer.x);

if (!touched && place_meeting(x, y, oPlayer) && xDist<3){
	touched = true;
	playerY = oPlayer.y;
	
	image_speed = 1;
	
	//Sound
	audio_play_sound(sndDoor, 1, false);
}