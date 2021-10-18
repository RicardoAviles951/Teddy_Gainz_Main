/// @description Initializing Global Vars
enum states {
	normal,
	dash,
	ghost,
	g_dash
	//balloon
}
global.state = noone;
global.cam_move_speed = 0;
global.cam_hsp = 0;

//Menu Vars
global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);
global.game_is_paused = false;

//Match the keys in player object.
global.key_revert = ord("X");
global.key_enter  = vk_enter;
global.key_left   = ord("A");
global.key_right  = ord("D");
global.key_up     = ord("W");
global.key_down   = ord("S");

global.orb_counter = 0;