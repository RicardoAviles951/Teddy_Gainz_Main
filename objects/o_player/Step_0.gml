/// @description Player code running every frame.
if (state == states.normal){
	normal_state();
}
else if (state == states.dash){
	dash_state();
}

//Some temporary code to switch between levels quickly
if (keyboard_check_pressed(ord("I"))) {
	room_goto(1);
}
if (keyboard_check_pressed(ord("O"))) {
	room_goto(Tutorial);
}