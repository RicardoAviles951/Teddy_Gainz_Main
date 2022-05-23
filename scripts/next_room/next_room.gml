// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_room(){
audio_stop_all();
instance_activate_object(o_particle_ctr)
part_system_destroy(o_particle_ctr.particle_sys);
room_goto_next();
}