/// @description Player Variables
//Initial player state
global.state = states.normal;
//Movement Vars
hsp = 0;
vsp = 0;
walk_spd = 4.5;
acceleration =.2;
//Jumping and falling vars
grv = .3;
jump_spd = 6;
on_ground = false;
//Dashing vars
dash_spd = 10;
dashing = false;
cooldown = 0;
g_dashing = false;
//Animations Array
animations[0] = s_player_idle_blink;
animations[1] = s_player_idle_pluck;
animations[2] = s_player_walk;
idleAnimState = choose( 1, 2, 3, 4, 5, 6, 7, 8,9);
path_teddy = false;
//particle vars
fade_time = 5;
fade_timer = fade_time;
spider_smack = false;
