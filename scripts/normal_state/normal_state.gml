function normal_state(){
//show_debug_message("NORMAL")
image_angle = 0;
image_alpha = 1;
get_input();
calc_smooth_movement();
check_ground();
check_jump();
object_collisions();
alt_tile_collisions();
anim();
	
	//Triggers
	//Dash
	if (key_dash)&& (cooldown <1) && (hsp != 0) && (global.state = states.normal){
		global.state = states.dash;
		cooldown = 60;
		audio_play_sound(snd_dash,1,false);
	}
	cooldown = cooldown - 1;
	//ghost
	if(key_ghost) && (global.orb_counter > 0) {
		global.orb_counter = global.orb_counter - 1;
		global.state = states.ghost;
		audio_sound_pitch(snd_ghost,1.5);
		audio_sound_gain(snd_ghost,.45,0);
		audio_play_sound(snd_ghost, 2, false);
	}
	//balloon
	balloon = instance_place(x,y,o_balloon_up);
	if (balloon)
		{
			with(balloon)
			{
				if can_grab == true global.state = states.balloon;
			}
		}
	percent = 0;
	if audio_is_playing(snd_balloon){
		audio_sound_gain(snd_balloon,0,250);
		if audio_sound_get_gain(snd_balloon) <.1 audio_stop_sound(snd_balloon);
	}
}
