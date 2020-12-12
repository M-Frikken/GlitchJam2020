function scr_collision_check(){
	
	if(place_meeting(x, y + vert_spd, obj_block)){
	
		while(!place_meeting(x, y + sign(vert_spd), obj_block)){
			y += sign(vert_spd);	
		}
	
		vert_spd = 0;
	
	}
	
	y += vert_spd;
	
}