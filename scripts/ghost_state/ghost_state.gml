// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ghost_state(){
show_debug_message("GHOST");
image_alpha = .5;
get_input();
calc_smooth_movement();
check_ground();
check_jump();
object_collisions_ghost();
alt_tile_collisions();
anim_ghost();

if (key_dash) && (cooldown <1) && (hsp != 0) && (global.state == states.ghost) {
		global.state = states.g_dash;
		cooldown = 60;
		audio_play_sound(snd_dash,1,false);
	}


if(global.state = states.ghost) && (alarm[2] = -1) {
	alarm[2] = room_speed*5;
}

}