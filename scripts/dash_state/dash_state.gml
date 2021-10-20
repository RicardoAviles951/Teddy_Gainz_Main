function dash_state(){
//only allowed if moving
if (hsp !=0) && (global.state == states.dash){
	dashing = true;
}
if (dashing){
	vsp = 0;
	hsp = sign(hsp)*dash_spd;
	x = x + hsp;
	sprite_index = s_player_dash;
}
//Collisions
if (tile_place_meeting(x+hsp,y,"Collision"))
{
	while (!tile_place_meeting(x+sign(hsp),y,"Collision"))
	{
		x = x + sign(hsp);
	}
	dashing = false;
}
if (place_meeting(x+hsp,y,o_ghost_wall))
{
	hsp = 0;
}
if keyboard_check_pressed(ord("L")){
	dashing = false
}
if (dashing == true) && (alarm[0] = -1){
		alarm[0]= 10;
		//show_debug_message("DASHING NOW")
	}
if (dashing == false){
	global.state = states.normal;
}
}