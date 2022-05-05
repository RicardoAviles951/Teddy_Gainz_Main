/// @description Player code running every frame.
if (global.state == states.normal){
	normal_state();
}
else if (global.state == states.dash){
	dash_state();
}
else if (global.state == states.balloon) {
	balloon_state();
}
else if (global.state == states.death) {
	death_state();
}
else if (global.state == states.player_idle) {
	Idle_state();
}
else if (global.state == states.ghost){
	ghost_state();
}
else if (global.state == states.g_dash){
	g_dash_state();
}


if (place_meeting(x,y,o_checkpoint))
{
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}
//DEVELOPMENTS PURPOSES ONLY
/*
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
//show_debug_message(vsp);
//show_debug_message("Cam Speed: " + string(global.cam_move_speed));
//show_debug_message("Collider #: " + string(global.collider));
//show_debug_message("Teddy angle: "+ string(image_angle));
if(keyboard_check_pressed(vk_control))
{
	audio_stop_all();
	room_goto_next();
}
