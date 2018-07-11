/// @description 
switch (state){
	case st.idle: case st.move:
		//Input
		var inputX = 0, inputY = 0, run = 0, attack = 0;
		
		//Follow player
		if (instance_exists(oPlayer) && distance_to_object(oPlayer)<range){
			var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
			
			moveDir = dir div 90;
			moveX = lengthdir_x(moveSpeed, dir);
			moveY = lengthdir_y(moveSpeed, dir);
			
			//Enemy collision
			if (place_meeting(x+moveX, y+moveY, oEnemies)){
				moveX = 0;
				moveY = 0;
			}
		}
		//Move around
		else if (irandom(30)==0){
			moveDir = irandom(3);
			moveX = lengthdir_x(choose(moveSpeed, 0), moveDir*90);
			moveY = lengthdir_y(choose(moveSpeed, 0), moveDir*90);
		}
		
		//Boost
		moveX += round(boostX);
		moveY += round(boostY);
		
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
		if (place_meeting(x, y, oPlayer) && oPlayer.state!=st.attack){
			state_set(st.attack);
		}
		
		//Knockback
		if (place_meeting(x, y, oPlayer) && oPlayer.state==st.attack){
			var dir = point_direction(oPlayer.x, oPlayer.y, x, y);
			boostX = lengthdir_x(8, dir);
			boostY = lengthdir_y(8, dir);
			
			hp--;
		}
	break;
	
	case st.attack:
		image_speed = 1;
		mask_index = sprite_index;
		
		//Knockback
		if (place_meeting(x, y, oPlayer) && oPlayer.state==st.attack){
			var dir = point_direction(oPlayer.x, oPlayer.y, x, y);
			boostX = lengthdir_x(8, dir);
			boostY = lengthdir_y(8, dir);
			
			state_set(st.idle);
			
			hp--;
		}
	break;
}

//Sprite
sprite_index = sprites[state, moveDir];

//Boost
boostX = lerp(boostX, 0, 0.1);
boostY = lerp(boostY, 0, 0.1);

//Die
if (hp<=0 && state!=st.dead){
	state_set(st.dead);
}