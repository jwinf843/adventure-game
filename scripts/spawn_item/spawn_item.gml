/// @function spawn_item
/// @description Spawns an item at a position
/// @arg x
/// @arg y
/// @arg item

//Args
var _x = argument[0];
var _y = argument[1];
var _item = argument[2];

//Spawn
var inst = instance_create_layer(_x, _y, "Instances", oItem);
inst.itemType = _item;

//Sprite
inst.sprite_index = oManager.itemSprite[_item];