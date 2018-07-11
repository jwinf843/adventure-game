/// @description 
//Vars
var camX = camera_get_view_x(view_camera);
var camY = camera_get_view_y(view_camera);

//Shadows
surface_set_target(shadowSurf);
draw_clear_alpha(0, 0);

with (all){
	var listPos = ds_list_find_index(other.noShadow, object_index);
	
	if (listPos==-1){
		//Shadow size
		var shWidth = 12/2;
		
		var shHeight = shWidth*0.7;
		
		var shX = x - camX;
		var shY = bbox_bottom - camY;
		
		//Draw
		draw_ellipse(shX - shWidth,
					 shY - shHeight,
					 shX + shWidth-1,
					 shY + shHeight-1,
					 0);
	}
}

surface_reset_target();

//Draw surface
var shColor = nightColor;
var shAlpha = 0.3;

draw_surface_ext(shadowSurf, camX, camY, 1, 1, 0, shColor, shAlpha);