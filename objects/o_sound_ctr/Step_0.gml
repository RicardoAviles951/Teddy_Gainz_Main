if(room == rm_Tutorial) && (!audio_is_playing(snd_waves)){
audio_play_sound(snd_waves, 1, true);	
audio_sound_gain(snd_waves,.8, 5000);
}

else if(room == rm_Lvl1) && (!audio_is_playing(snd_waves)){
audio_play_sound(snd_waves, 1, true);	
audio_sound_gain(snd_waves,.8, 5000);
}
else if(room == rm_Lvl3) && (!audio_is_playing(snd_spookywind_ambient)){
audio_play_sound(snd_spookywind_ambient,2,true);
}



