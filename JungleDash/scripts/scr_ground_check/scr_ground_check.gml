// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ground_check(){
	if(duckKey || duckKeyAlt || duckKeyAlt2){
		ducking = true;
		jumping = false;
		falling = true;
	}
	
	if(place_meeting(x, y+1, obj_block)){
		// Touching the ground
		vert_spd = 0;
		jumping = false;
		falling = false;
		
		if(!(duckKey || duckKeyAlt || duckKeyAlt2)){
			ducking = false;
		}
		
		// If the player wants to jump
		if((jumpKey || jumpKeyAlt || jumpKeyAlt2) && !(duckKey || duckKeyAlt || duckKeyAlt2)){
			jumping = true;
			vert_spd = -jump_spd;
		}
		
	}else{
		// Not touching the ground
		if(duckKey || duckKeyAlt || duckKeyAlt2){
			// Fall faster if you duck while jumping
			vert_spd += grav*4;
		}else{
			if(vert_spd < termVelocity){
				vert_spd += grav;
			}
			if(sign(vert_spd)==1){
				falling = true;
			}
		}
	}
}