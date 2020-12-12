/// @description Insert description here
// You can write your code in this editor

// create a new camera, conserve it's ID to be able to refer to it later
camera = camera_create();

// set original camera position to be right on top of player character
vm = matrix_build_lookat(180, 160, -10, 180, 160, 0, 0, 1, 0)
// 1005x720 is a large enough resolution that conserves the porper aspect ratio
pm = matrix_build_projection_ortho(356, 202, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

// register this camera to first view camera slot
view_camera[0] = camera;