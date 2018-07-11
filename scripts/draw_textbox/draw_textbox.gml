/// @arg string
/// @arg characters

//Args
var _string = argument[0];
var _characters = argument[1];

//String Properties
var str = string_copy(_string, 1, _characters);

var maxW = 128;

var strW = string_width_ext(_string, -1, maxW);
var strH = string_height_ext(_string, -1, maxW);

//Arrow
var aX = x - camera_get_view_x(view_camera);
var aY = y - (sprite_height/2 + 8) - camera_get_view_y(view_camera);

//Textbox
var margin = 8;

var tbW = strW + margin*2;
var tbH = strH + margin*2;

var tbX = aX - tbW/2;
var tbY = aY - tbH;

//Draw arrow
draw_sprite(sArrow, 0, aX, aY);

//Draw textbox
draw_9slice(tbX, tbY, tbW, tbH, sTextbox, 0);

//Draw text
draw_set_color(c_black);
draw_text_ext(tbX + margin, tbY + margin, str, -1, strW);
draw_set_color(c_white);