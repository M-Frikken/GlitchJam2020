// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_detect_key(){
	jumpKey = keyboard_check_pressed(vk_space);
	jumpKeyAlt = keyboard_check_pressed(vk_up);
	jumpKeyAlt2 = keyboard_check_pressed(ord("W"));
	duckKey = keyboard_check(vk_down);
	duckKeyAlt = keyboard_check(ord("S"));
	duckKeyAlt2 = keyboard_check(vk_shift);
}