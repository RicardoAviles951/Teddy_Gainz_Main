/// @description Player code running every frame.
if (global.state == states.normal){
	normal_state();
}
else if (global.state == states.dash){
	dash_state();
}
else if (global.state == states.ghost){
	ghost_state();
}
else if (global.state == states.g_dash){
	g_dash_state();
}
//show_debug_message(hsp);
//show_debug_message(x);
//show_debug_message(y);
//Restarts the level
if (keyboard_check_pressed(ord("O"))) {
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;	
}

if(place_meeting(x,y, o_thicc)) && !instance_exists(o_cutscene_parent)
{
	instance_create_layer(x, y, "Instances", o_cutscene_trigger);
	image_speed = 0;
	image_index = 0;
}
