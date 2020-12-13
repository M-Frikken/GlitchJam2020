function scr_jump_check(){
	if(jumping){
		if(vert_spd < 0){
			jumping = true;
		}
		else{
			jumping = false;
			falling = true;
		}
	}
}