/// @description Player Variables
//Initial player state
global.state = states.normal;
//Movement Vars
hsp = 0;
vsp = 0;
walk_spd = 4;
acceleration =.2;
//Jumping and falling vars
grv = .3;
jump_spd = 6;
on_ground = false;
//Dashing vars
dash_spd = 10;
dashing = false;
cooldown = 0;

//Animations Array
animations[0] = s_player_idle_blink;
animations[1] = s_player_idle_pluck;
animations[2] = s_player_walk;
