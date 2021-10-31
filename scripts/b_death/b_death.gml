// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function b_death(){
image_speed = .5;
image_blend = c_red;

if(room == rm_finalboss)
{
	if(death_tumble ==false && point_distance(x, y, o_path_center.x,o_path_center.y ) > 5)
		{
			show_debug_message("MOVING");
			move_towards_point(o_path_center.x,o_path_center.y, 5);
			death_tumble = true;
		}
		else speed = 0;
if(timer_boss <120000)
{
	y += 2;
	image_angle +=.1;
	show_debug_message(image_angle);
}
else
{
	timer_boss++;
}
if(image_angle >= 15){
	room_goto_next();
}
	
	}
	
	
	
	
}
