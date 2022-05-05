/// @description Alarm for dash cooldown.
//When this alarm is triggered the player state is set to normal.
if(global.state != states.balloon){
global.state = states.normal;
}
//show_debug_message("State Changed");