/// @description 
//Position & Size
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

cellSize = 32;

rectWidth = guiW * 0.8;
rectHeight = cellSize;

x = (guiW/2) - (rectWidth/2);
y = guiH - rectHeight;

mCell = -1;
scroll = 0;