function scr_set_sprite(){
	if(jumping || falling){
		sprite_index = spr_protag_jump;	
	}
	
	if(ducking && !falling && !jumping){
		//sprite_index = spr_protag_toslide;
		//image_speed = 2; 
		sprite_index = spr_protag_slide;
	}
	
	if(!jumping && !falling && !ducking){
		sprite_index = spr_protag_run;
	}
	
}