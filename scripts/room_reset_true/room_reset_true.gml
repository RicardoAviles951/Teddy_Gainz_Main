// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_reset_true(){
audio_stop_all();
global.cam_move_speed = 0;
global.orb_counter = 0;
global.boss_health = 3;
instance_activate_object(o_particle_ctr)

part_system_destroy(o_particle_ctr.particle_sys);
}