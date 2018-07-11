/// @description 
switch (state){
	case st.idle: case st.move:
		//Input
		var inputX = 0, inputY = 0, run = 0, attack = 0;

		//Random Movement
		if (irandom(20)==0){
			var dir = random(360);
			var spd = choose(moveSpeed, 0);
			moveX = lengthdir_x(spd, dir);
			moveY = lengthdir_y(spd, dir);
		}
		
		//Player collision or distance
		var dist = point_distance(xstart, ystart, x+moveX, y+moveY);
		if (place_meeting(x+moveX, y+moveY, oPlayer) || dist>maxDist || talking){
			moveX = 0;
			moveY = 0;
		}
		
		//Collisions
		if (collision(moveX, 0)){
			while(!collision(sign(moveX), 0)){
				x += sign(moveX);
			}
			
			moveX = 0;
		}
		
		if (collision(0, moveY)){
			while(!collision(0, sign(moveY))){
				y += sign(moveY);
			}
			
			moveY = 0;
		}

		//Apply
		x += moveX;
		y += moveY;

		//State
		if (abs(moveX)+abs(moveY)==0){
			state = st.idle;
		}
		else{
			state = st.move;
			
			image_speed = 1+run/2;
		}
		
		mask_index = mask;
		
		//Direction
		if (state==st.move) moveDir = point_direction(0, 0, moveX, moveY) div 90;
		
		//Attack
		if (attack){
			state_set(st.attack);
		}
	break;
	
	case st.attack:
		image_speed = 1;
		mask_index = sprite_index;
	break;
}

//Dialogue
if (distance_to_object(oPlayer)<4){
	talking = true;
	
	//Face player
	moveDir = point_direction(x, y, oPlayer.x, oPlayer.y) div 90;
	
	//Dialogue vars
	var strSize = string_length(message[line]);
	var totalMessages = array_length_1d(message);
	
	//Increase char
	if (char < strSize){
		char++;
	}
	
	//Go to next message
	else if (keyboard_check_pressed(vk_enter) && line!=totalMessages-1){
		line++;
		char = 0;
	}
}
else{
	line = 0;
	char = 0;
	
	talking = false;
}

//Sprite
sprite_index = sprites[state, moveDir];