// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function balloon_state(){
sprite_index = s_player_balloon;
get_input();
//vsp = o_balloon_up.vspd;
alt_tile_collisions();	
if(key_jump)
{
	global.state = states.normal;
}

//show_debug_message("Teddy VSP: " + string(vsp));
}
/*
with(o_balloon_up){
	other.vsp = vspd;
}