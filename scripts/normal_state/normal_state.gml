function normal_state(){
get_input();
calc_smooth_movement();
check_ground();
check_jump();
object_collisions();
//anim;
	
	if (key_dash)&& (cooldown <1){
		state = states.dash;
		cooldown = 60;
	}
	cooldown = cooldown - 1;
}