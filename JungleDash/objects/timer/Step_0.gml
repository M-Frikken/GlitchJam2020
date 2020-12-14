/// @description Insert description here
// You can write your code in this editor

time = get_timer() - time_start;

if (int64(time / 1000000) >= 60) game_won();