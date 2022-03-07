var camW = camera_get_view_width(view_camera[0]) + 100;

if(level_start){
if(point_distance(x,y,o_cameraTarget.x - camW/2,o_cameraTarget.y) > 20){
	move_towards_point(o_cameraTarget.x - camW/2,o_cameraTarget.y,7);
}
else
{
speed =0;
level_start = false;
in_position = true;
}
}
if in_position{
	x = o_cameraTarget.x - camW/2;
	y = o_cameraTarget.y + sin(timer_bug*.10)*10
}
timer_bug++;

//if (place_meeting(x,y, o_player))
//{
	//room_restart();
	//global.cam_move_speed = 0;
//}



