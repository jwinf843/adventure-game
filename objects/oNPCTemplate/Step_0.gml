/// @description 
switch (state){
	case st.idle: case st.move:
		//Input
		var inputX = 0, inputY = 0, run = 0, attack = 0;

		//Movement
		moveX = inputX * moveSpeed * (1+run);
		moveY = inputY * moveSpeed * (1+run);
		
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

//Sprite
sprite_index = sprites[state, moveDir];