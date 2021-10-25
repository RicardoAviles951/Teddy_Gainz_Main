if(place_meeting(x,y,o_player) && global.state == states.ghost) {
	ghosted = true;
}
if(ghosted == true) {
	alpha_value -= .01;
}

if(alpha_value <= 0) {
	instance_destroy();
}
	image_alpha=(alpha_value);