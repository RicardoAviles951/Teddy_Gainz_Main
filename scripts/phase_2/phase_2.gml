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
