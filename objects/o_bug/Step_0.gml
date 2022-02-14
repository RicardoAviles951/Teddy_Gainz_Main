var camW = camera_get_view_width(view_camera[0]) + 100;
if(instance_exists(o_player)){
if(in_position == false){
if (point_distance(x, y, o_cameraTarget.x - camW/2, o_player.y) > 2){
	move_towards_point(o_cameraTarget.x - camW/2, o_player.y,7);
	show_debug_message("moving");
}
else {
	speed = global.cam_move_speed;
	in_position = true;
	show_debug_message("not moving");
}
}

if(in_position)
{
	x = o_cameraTarget.x - camW/2
	y = lerp(y,o_player.y,.05);
}
}