///@desc draw global shadow



// clear surface
//draw_clear_alpha(c_black, 0);

// Draw shadow
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_color(c_white);
draw_set_alpha(1.0);

// Draw guiding light
if (instance_exists(obj_firefly)) {
	with (obj_firefly) {
		gpu_set_blendmode(bm_add);
		//draw_self();
		draw_set_circle_precision(124);
		draw_set_alpha(0.6);
		draw_circle_colour(obj_firefly.x, obj_firefly.y, 60, c_white, c_orange, 0);
		gpu_set_blendmode(bm_normal);
	}
}

