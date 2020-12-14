// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function san_take_dmg(){
	
	if (obj_meter_manager.cur_san > 1) obj_meter_manager.cur_san -= 1;
	
	shadow_demon.moving_back = false;
	shadow_hound.moving_back = false;
	shadow_mare.moving_back = false;

} 