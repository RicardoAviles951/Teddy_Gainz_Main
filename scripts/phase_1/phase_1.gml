function phase_1(){
	show_debug_message("BOSS PHASE1");
	if(global.boss_state == boss.phase_1 && path_enabled == false && global.boss_health == 3)
{
    path_start(pth_boss_phase1,2,path_action_continue, false);
	path_enabled = true;
}

	firing_delay -= 1;
	//Looks in the direction of the player
	look = point_direction(x,y, o_player.x, o_player.y);

//Creates an instance of a bullet if the delay counter is less than zero. Sets it to 30. 
if(firing_delay <0) and global.boss_health == 3 {
	
	firing_delay = random_range(10,60);
	with(instance_create_layer(x,y,"Bullets", o_acid)) //The with function allows us to reference the o_acid object. 
	{
		show_debug_message("PEWWWWWW");
		speed = 10; //speed of projectile
		direction = other.look; //sets the direction of projectile
		image_angle = direction; //sets the angle to the direction.
	}

}
if(keyboard_check_pressed(vk_down)){
global.boss_health-=1;	
}
//show_debug_message("phase1:" + string(path_speed));
//When the health is 2 the path ends and the phase 2 alarm is set.
if(global.boss_health = 2 && alarm[0] = -1) {
	alarm[0] = 60;
	path_speed = 0;
	path_end();
	path_enabled = false;
}
}