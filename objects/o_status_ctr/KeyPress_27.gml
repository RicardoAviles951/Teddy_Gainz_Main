/// @description Insert description here
// You can write your code in this editor
if(global.game_is_paused == false) {
	global.game_is_paused = true;
	audio_pause_all();
	instance_deactivate_all(true);
}
else {
	global.game_is_paused = false;
	audio_resume_all();
	instance_activate_all();
	exit;
}