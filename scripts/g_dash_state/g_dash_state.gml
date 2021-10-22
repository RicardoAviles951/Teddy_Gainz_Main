// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function g_dash_state(){
	
if (hsp !=0){
	g_dashing = true;
}
if (g_dashing){
	vsp = 0;
	hsp = sign(hsp)*dash_spd;
	x = x + hsp;
	sprite_index = s_player_ghostdash;
}
//Collisions
if (tile_place_meeting(x+hsp,y,"Collision"))
{
	while (!tile_place_meeting(x+sign(hsp),y,"Collision"))
	{
		x = x + sign(hsp);
	}
	g_dashing = false;
}

if (g_dashing == true) && (alarm[3] = -1){
		alarm[3]= 10;
		show_debug_message("G DASHING NOW")
	}
if (g_dashing == false){
	global.state = states.ghost;
}
}