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

spiral++;

if(spiral>360)
{
	spiral = 0;
}
countdown_bullet--;


if(countdown_bullet<0){
countdown_bullet = 5;
var controlbullet = instance_create_layer(x,y,"Bullets", o_acid_spiral);
controlbullet.direction = spiral;
controlbullet.speed = 5;
}

if(keyboard_check_pressed(vk_down)){
global.boss_health-=1;	
}
//if boss health = 0, play animation, alarm for instance destroy.

}