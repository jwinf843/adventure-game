/// @description 
switch (state){
	case st.attack:
		state_set(st.idle);
	break;
	
	case st.dead:
		instance_destroy();
	break;
}