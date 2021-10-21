function phase_2(){
	show_debug_message("BOSS PHASE2")
	show_debug_message("phase2:" + string(path_speed));
	//var rest_x = global.view_width/2;
	//var rest_y = (global.view_height/2) - (sprite_get_height(s_boss_placeholder)/2);
	
if point_distance(x, y, o_path_center.x,o_path_center.y ) > 5
    {
    move_towards_point(o_path_center.x,o_path_center.y, 5);
    }
else speed = 0;

firing_delay -= 1;
look = point_direction(x,y, o_player.x, o_player.y);

if(alarm[2] = -1 && firing_delay <0)
{
	bullet_state = choose(1,2);
	alarm[2] = 60;
}

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
	
	firing_delay = random_range(30,60);
	with(instance_create_layer(x,y,"Bullets", o_acid_homing)) //The with function allows us to reference the o_acid object. 
	{
		image_angle = direction; //sets the angle to the direction.
	} 
	} break;
}


if(keyboard_check_pressed(vk_down)){
global.boss_health-=1;	
}
	
if(global.boss_state == boss.phase_2 && path_enabled == false && alarm[0] = -1)
{
	show_debug_message("PATH2 Activated");
    alarm [0] = 120;
	path_enabled = true;
}

if(keyboard_check_pressed(ord("H")) && global.boss_health = 1) {
	path_speed = 0;
	path_end();
	path_enabled = false;
	global.boss_state = boss.phase_3;
}
}
