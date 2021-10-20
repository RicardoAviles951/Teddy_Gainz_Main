function phase_3(){
if point_distance(x, y, o_path_center.x,o_path_center.y ) > 5
    {
    move_towards_point(o_path_center.x,o_path_center.y, 5);
    }
else speed = 0;

if(global.boss_state == boss.phase_3 && path_enabled == false && alarm[1] = -1)
{
	show_debug_message("PATH3 ACITVATED");
	 alarm [1] = 120;
	path_enabled = true;
}
if(keyboard_check_pressed(vk_down)){
global.boss_health-=1;	
}
//if boss health = 0, play animation, alarm for instance destroy.

}