/// @description 
//Properties
moveSpeed = 2;
moveDir = 0;

range = 128;

attack = 20;

//Variables
moveX = 0;
moveY = 0;

boostX = 0;
boostY = 0;

state = st.idle;

//Health
hp = 2;

//Sprites
sprites[st.idle, 0] = sSkeleton_Idle_Right;
sprites[st.idle, 1] = sSkeleton_Idle_Up;
sprites[st.idle, 2] = sSkeleton_Idle_Left;
sprites[st.idle, 3] = sSkeleton_Idle_Down;

sprites[st.move, 0] = sSkeleton_Move_Right;
sprites[st.move, 1] = sSkeleton_Move_Up;
sprites[st.move, 2] = sSkeleton_Move_Left;
sprites[st.move, 3] = sSkeleton_Move_Down;

sprites[st.attack, 0] = sSkeleton_Attack_Right;
sprites[st.attack, 1] = sSkeleton_Attack_Up;
sprites[st.attack, 2] = sSkeleton_Attack_Left;
sprites[st.attack, 3] = sSkeleton_Attack_Down;

sprites[st.dead, 0] = sSkeleton_Dead;
sprites[st.dead, 1] = sSkeleton_Dead;
sprites[st.dead, 2] = sSkeleton_Dead;
sprites[st.dead, 3] = sSkeleton_Dead;

mask = sSkeleton_Mask;