/// @description 
//Music
audio_play_sound(sndMusic, 1, true);

global.pause = false;

//Health
hpShow = 100;

//Inventory
global.inv = ds_list_create();

//Items
enum item{
	coin,
	apple,
	mushroom
}

itemSprite[item.coin] = sCoin;
itemSprite[item.apple] = sApple;
itemSprite[item.mushroom] = sMushroom;

//Interface
instance_create_layer(0, 0, "Instances", oItemMenu);

//Time
global.time = 9;

//Lighting
lightSurf = -1;

eveningTime = 21;
nightTimeA = 0;
nightTimeB = 5;

eveningSpread = 3;
nightSpread = 3;

//Shadows
shadowSurf = -1;

noShadow = ds_list_create();
ds_list_add(noShadow, oManager, oWall, oHouseFront, oHouseSide,
			oDoor, oExit, oItemMenu);