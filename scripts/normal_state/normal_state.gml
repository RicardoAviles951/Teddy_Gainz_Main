function normal_state(){
get_input();
calc_smooth_movement();
check_ground();
check_jump();
alt_tile_collisions();
anim();
	
	if (key_dash)&& (cooldown <1){
		state = states.dash;
		cooldown = 60;
		audio_play_sound(snd_dash,1,false);
	}
	cooldown = cooldown - 1;
}