TransitionStart(rm_cutscene1,sq_fadeIn, sq_fadeOut);
global.gamewin = false;
global.room = rooms.cut_puzzle;
global.state = states.player_idle;
if(!audio_is_playing(snd_waves)) audio_play_sound(snd_waves,1,true);