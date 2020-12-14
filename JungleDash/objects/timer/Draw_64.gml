/// @description Insert description here
// You can write your code in this editor

draw_set_font(txt_font);
draw_text_transformed(room_width * 3 - 200, room_height * 3 + 200, string(int64(time / 1000000)) + "s / 60s", 3, 3, 0);	
