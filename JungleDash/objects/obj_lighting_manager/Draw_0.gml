///@desc draw global shadow
if (!surface_exists(surface)) {
	surface = surface_create(room_width, room_height);	
}

// lighting bit
var dif = choose(0.01, -0.01, 0);
glowSize += dif;
glowSize = clamp(glowSize, 0.7, 0.9);


surface_set_target(surface);

draw_clear_alpha(c_black, 0);

draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, room_width, room_height, 0);

draw_set_color(c_white);
draw_set_alpha(1);

// secondary black rectangle for left half of screen
//draw_sprite_ext(spr_dark1, 0, -65, 50, 1, 1, 0, c_black, 0.5);

// draw firefly glow
if(instance_exists(obj_firefly)) {
	
	gpu_set_blendmode(bm_subtract);
	
	draw_sprite_ext(spr_glow2, 0, obj_firefly.x, obj_firefly.y, glowSize, glowSize, 0, c_yellow, 1);	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_glow1, 0, obj_firefly.x, obj_firefly.y, -glowSize, -glowSize, 0, c_white, 1);	
	
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

if (instance_exists(obj_camera)) {
	camera_set_view_mat(obj_camera.camera, obj_camera.vm);
	camera_set_proj_mat(obj_camera.camera, obj_camera.pm);
	camera_apply(obj_camera.camera);
}

draw_surface(surface, 0, 0);

// smth smth



