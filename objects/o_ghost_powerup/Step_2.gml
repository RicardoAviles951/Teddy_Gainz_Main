/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, o_player) && (is_collectible == true)){
	global.orb_counter = global.orb_counter + 1;
	show_debug_message("ORB PICKED UP");
	instance_destroy();
	//show_debug_message(orb_counter);
}