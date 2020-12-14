scr_detect_key();
scr_ground_check();
scr_jump_check();
scr_collision_check();
scr_set_sprite();

if (collision_circle(x, y, 1, obj_obstacle, false, true) && getting_dmgd) {
	san_take_dmg();
	getting_dmgd = false;
}
else getting_dmgd = true;
