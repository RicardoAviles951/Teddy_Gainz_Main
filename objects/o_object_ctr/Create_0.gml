/// @description Initializing Global Vars
enum states {
	player_idle,
	normal,
	dash,
	death,
	ghost,
	g_dash,
	balloon
}


enum boss {
	idle,
	phase_1,
	phase_2,
	phase_3,
	boss_death
}

enum rooms {
	splash_rm,
	menu_room,
	cut_map,
	cut_intro,
	tutorial,
	cut_level1,
	level1,
	cut_puzzle,
	puzzleboss,
	cut_level2,
	level2,
	cut_pre_spiderboss,
	boss_spider,
	cut_post_spiderboss,
	cut_lv3,
	level3,
	cut_finalboss,
	finalboss,
	cut_ending,
	cut_ending2,
	credits_room
}
global.room       = noone;
	
global.state      = noone;
global.boss_state = noone;
global.collider   = 0;
global.cam_move_speed = 0;
global.cam_hsp        = 0;

//Menu Vars
global.pause          = true;
global.view_width     = camera_get_view_width(view_camera[0]);
global.view_height    = camera_get_view_height(view_camera[0]);
global.game_is_paused = false;

//Match the keys in player object.
global.key_enter  = vk_enter;
global.key_left   = ord("A");
global.key_right  = ord("D");
global.key_up     = ord("W");
global.key_down   = ord("S");

//ghost vars
global.orb_counter = 0;

//Boss vars
global.boss_health = 3;
global.hittable    = true; 
global.cam_shake   = false;

//Win vars
global.gamewin = false;

//Sound vars
global.master = 1;
global.sfx = 1;
global.music = 1;
//cutscene vars
global.cut_seen = false;

global.death_cnt = 0;
global.help = false;
gpu_set_texfilter(false);
window_center()
