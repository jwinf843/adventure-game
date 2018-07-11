/// @description 
//Lighting surface
if (!surface_exists(lightSurf)){
	lightSurf = surface_create(width, height);
}

//Shadow surface
if (!surface_exists(shadowSurf)){
	shadowSurf = surface_create(width, height);
}
