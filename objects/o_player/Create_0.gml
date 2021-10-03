/// @description Player Variables
//Initial player state
state = states.normal;
//Movement Vars
hsp = 0;
vsp = 0;
walk_spd = 8;
acceleration =.6;
//Jumping and falling vars
grv = .3;
jump_spd = 6;
on_ground = false;
//Dashing vars
dash_spd = 20;
dashing = false;
cooldown = 0;

//For v1_tile_collisions
tilemap = layer_tilemap_get_id("Collision");
