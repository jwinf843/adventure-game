/// @description 
//Properties
moveSpeed = 2;
moveDir = 0;

//Variables
moveX = 0;
moveY = 0;

boostX = 0;
boostY = 0;

//Health
hp = 100;
stamina = 100;
staminaRefill = 0;

//States
enum st{
	idle,
	move,
	attack,
	dead
}

state = st.idle;

//Sprites
sprites[st.idle, 0] = sPlayer_Idle_Right;
sprites[st.idle, 1] = sPlayer_Idle_Up;
sprites[st.idle, 2] = sPlayer_Idle_Left;
sprites[st.idle, 3] = sPlayer_Idle_Down;

sprites[st.move, 0] = sPlayer_Move_Right;
sprites[st.move, 1] = sPlayer_Move_Up;
sprites[st.move, 2] = sPlayer_Move_Left;
sprites[st.move, 3] = sPlayer_Move_Down;

sprites[st.attack, 0] = sPlayer_Attack_Right;
sprites[st.attack, 1] = sPlayer_Attack_Up;
sprites[st.attack, 2] = sPlayer_Attack_Left;
sprites[st.attack, 3] = sPlayer_Attack_Down;

sprites[st.dead, 0] = sPlayer_Dead;
sprites[st.dead, 1] = sPlayer_Dead;
sprites[st.dead, 2] = sPlayer_Dead;
sprites[st.dead, 3] = sPlayer_Dead;