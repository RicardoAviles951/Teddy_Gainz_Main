if(place_meeting(x,y, o_player) && is_collidable == true) {
	global.cam_move_speed = 3;
	is_collidable = false;
	instance_destroy(o_cam_speed_collider_3);
}