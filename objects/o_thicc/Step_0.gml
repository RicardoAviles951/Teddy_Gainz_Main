if rm_Tutorial and instance_exists(o_player) {
	if (point_direction(x,y+64,o_player.x,o_player.y) >90){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}
//show_debug_message(point_direction(x,y+64,o_player.x,o_player.y));