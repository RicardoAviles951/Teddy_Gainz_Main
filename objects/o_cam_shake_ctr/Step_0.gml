
if(global.cam_shake == true) {
	var shake = random_range(-3,3);
	
	camera_set_view_pos(view_camera[0], view_x + shake, view_y + shake);
}
else {
	camera_set_view_pos(view_camera[0], view_x, view_y);
}
if(alarm[0] = -1) 
{
	alarm[0] = 120;
}
	