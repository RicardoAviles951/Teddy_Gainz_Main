/// @description Player code running every frame.
if (global.state == states.normal){
	normal_state();
}
else if (global.state == states.dash){
	dash_state();
}
//show_debug_message(x);
//show_debug_message(y);
//Some temporary code to switch between levels quickly
if (keyboard_check_pressed(ord("O"))) {
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
	global.cam_move_speed = 0;
}