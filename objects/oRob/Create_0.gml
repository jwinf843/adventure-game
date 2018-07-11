/// @description 
//Dialogue
message[0] = "Hi there, hope you're doing fine.";
message[1] = "My name is Rob. Don't worry, I won't rob you!";
message[2] = "What is your name? Oh pardon me, I forgot you didn't speak.";

char = 0;
line = 0;

talking = false;

//Properties
moveSpeed = 2;
moveDir = 0;

maxDist = 64;

//Variables
moveX = 0;
moveY = 0;

state = st.idle;

//Sprites
sprites[st.idle, 0] = sRob_Idle_Right;
sprites[st.idle, 1] = sRob_Idle_Up;
sprites[st.idle, 2] = sRob_Idle_Left;
sprites[st.idle, 3] = sRob_Idle_Down;

sprites[st.move, 0] = sRob_Move_Right;
sprites[st.move, 1] = sRob_Move_Up;
sprites[st.move, 2] = sRob_Move_Left;
sprites[st.move, 3] = sRob_Move_Down;

mask = sRob_Mask;