/// @description 
//Menu
enum op{
	resume,
	save,
	quit
}

menuText[op.resume] = "Resume";
menuText[op.save] = "Save";
menuText[op.quit] = "Quit";

menuSelected = 0;
menuOptions = array_length_1d(menuText);
menuSelectedPrev = 0;