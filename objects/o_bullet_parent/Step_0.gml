if (tile_place_meeting(x, y, "Collision"))
{
	instance_destroy();
}

if(place_meeting(x,y,o_player) && global.state != states.ghost && global.state != states.g_dash && global.boss_state != boss.boss_death) {
	global.state = states.death;
	instance_destroy();
}
