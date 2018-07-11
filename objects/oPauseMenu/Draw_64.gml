/// @description 
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//Draw black rectangle
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, guiW, guiH, 0);
draw_set_alpha(1);
draw_set_color(c_white);

//Draw menu
menuX = 32;
menuY = 32;

for(var i=0; i<menuOptions; i++){
	//Alpha
	if (i!=menuSelected) draw_set_alpha(0.7);
	
	//Draw
	draw_text(menuX, menuY + 32*i, menuText[i]);
	
	//Reset
	draw_set_alpha(1);
}