function dash_state(){
//only allowed if moving
if (hsp !=0) && (global.state == states.dash){
	dashing = true;
}
if (dashing){
	vsp = 0;
	hsp = sign(hsp)*dash_spd;
	sprite_index = s_player_dash;
}
//Collisions
if (tile_place_meeting(x+hsp,y,"Collision"))
{
	while (!tile_place_meeting(x+sign(hsp),y,"Collision"))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	dashing = false;
}
x = x + hsp;
	
if (tile_place_meeting(x,y+vsp,"Collision"))
{
	while (!tile_place_meeting(x,y+sign(vsp),"Collision"))
	{
		y = y + sign(hsp);
	}
	vsp = 0;
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

fade_timer--;

if(fade_timer <= 0)
{
	fade_timer = fade_time
	part_particles_create(o_particle_ctr.particle_sys, x,y,o_particle_ctr.particle_type_dash_fade,1);
}

}