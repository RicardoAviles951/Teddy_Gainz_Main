if(place_meeting(x,y,o_player))
{
	global.gamewin = true;
}
if(global.gamewin)
{
 if(instance_exists(o_player)){
	instance_destroy(o_player)
	}
if(keyboard_check_pressed(vk_space)){
	room_goto_next();
}
}