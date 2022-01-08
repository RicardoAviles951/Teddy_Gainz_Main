if(place_meeting(x,y,o_player) and active = false and global.state != states.balloon)
{
	o_player.vsp = -5;
	active = true;
	global.state = states.balloon;
	vspd = o_player.vsp;
	hspd = o_player.hsp;
}
	
y += vspd;
x += hspd;
show_debug_message(vspd);