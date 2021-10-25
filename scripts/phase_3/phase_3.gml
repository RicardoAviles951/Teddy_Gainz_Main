function phase_3(){
//Resets the postion to center of screen. 
if point_distance(x, y, o_path_center.x,o_path_center.y ) > 5
    {
    move_towards_point(o_path_center.x,o_path_center.y, 5);
    }
else speed = 0;
//Sets the path the boss will take during phase 3.
if(global.boss_health == 1 && path_enabled == false && alarm[4] = -1)
{
	show_debug_message("PATH3 ACITVATED");
	 alarm [4] = 120;
	path_enabled = true;
} 
//Spiral bullets code
spiral++;

if(spiral>360)
{
	spiral = 0;
}
countdown_bullet--;


if(countdown_bullet<0 && global.boss_health ==1) {
countdown_bullet = 5;
var controlbullet = instance_create_layer(x,y,"Bullets", o_acid_spiral);
controlbullet.direction = spiral;
controlbullet.speed = 5;
}
//trigger event that causes the health to go down
if(keyboard_check_pressed(vk_down)){
global.boss_health-=1;	
}
//if boss health = 0, play animation, alarm for instance destroy.

}