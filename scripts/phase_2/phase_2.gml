function phase_2(){
	show_debug_message("BOSS PHASE2")
	//show_debug_message("phase2:" + string(path_speed));
	//var rest_x = global.view_width/2;
	//var rest_y = (global.view_height/2) - (sprite_get_height(s_boss_placeholder)/2);
//Resets the postion of the boss at the center of the screen. 
if point_distance(x, y, o_path_center.x,o_path_center.y ) > 5
    {
    move_towards_point(o_path_center.x,o_path_center.y, 5);
    }
else speed = 0;

//Counts down the firing delay variable every step
firing_delay -= 1;
//Aims in the direction of the player.
look = point_direction(x,y, o_player.x, o_player.y);
//Checks firing delay timer and sets the bullet state variable to either 1 or 2. Runs this every 1 second.
if(alarm[2] = -1 && firing_delay <0 && global.boss_health ==2)
{
	bullet_state = choose(1,2);
	alarm[2] = 60;
}
//Choosing which bullet to shoot.
switch( bullet_state )
{
	case 1: if(firing_delay <0) {
	
	firing_delay = random_range(10,60);
	with(instance_create_layer(x,y,"Bullets", o_acid)) //The with function allows us to reference the o_acid object. 
	{
		speed = 10; //speed of projectile
		direction = other.look; //sets the direction of projectile
		image_angle = direction; //sets the angle to the direction.
	}
	} break;
	case 2: if(firing_delay <0) {
	
	firing_delay = random_range(60,120);
	with(instance_create_layer(x,y,"Bullets", o_acid_homing))
	{
		image_angle = direction; //sets the angle to the direction.
	} 
	} break;
}
//Sets the path for the boss. 
if(global.boss_health == 2 && path_enabled == false && alarm[3] = -1 )
{
	show_debug_message("PATH2 Activated");
    alarm [3] = 120;
	path_enabled = true;
}
//Another trigger event that leads to next phase.
if(global.boss_health == 1) && alarm[1] = -1 {
	path_speed = 0;
	path_end();
	path_enabled = false;
	alarm[1] = 60;
}
}
