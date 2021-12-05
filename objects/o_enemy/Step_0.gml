var camW = camera_get_view_width(view_camera[0]) + 100;
x = o_cameraTarget.x - camW/2
y = o_cameraTarget.y + sin(timer_bug*.10)*10

timer_bug++;

//if (place_meeting(x,y, o_player))
//{
	//room_restart();
	//global.cam_move_speed = 0;
//}



