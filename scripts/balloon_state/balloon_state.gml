function balloon_state(){
sprite_index = s_player_balloon;
get_input();
alt_tile_collisions();	
if(key_jump)
{
	global.state = states.normal;
}

}
