/// @description Player code running every frame.
if (state == states.normal){
	normal_state();
}
else if (state == states.dash){
	dash_state();
}
show_debug_message(x);
show_debug_message(y);
//Some temporary code to switch between levels quickly
if (keyboard_check_pressed(ord("O"))) {
	room_restart();
	x=192;
	y=256.30;
	image_xscale = 1;
}