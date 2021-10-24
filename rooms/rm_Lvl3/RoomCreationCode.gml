global.cam_move_speed = 0;
global.room = rooms.level3;
if(!audio_is_playing(snd_level3_music)) {
	audio_play_sound(snd_level3_music,1,true);
}
TransitionStart(rm_cutscene1,sq_fadeIn, sq_fadeOut);