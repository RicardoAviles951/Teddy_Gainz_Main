// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
global.game_is_paused = false;
	audio_resume_all();
	instance_activate_all();
	exit;
}