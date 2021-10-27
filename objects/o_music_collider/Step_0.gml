if(place_meeting(x,y,o_player) && room == rm_Tutorial && !audio_is_playing(snd_surfrock))
{
	audio_play_sound(snd_surfrock,2,true);
}

if(place_meeting(x,y,o_player) && room == rm_Lvl1 && !audio_is_playing(snd_surfrock))
{
	audio_play_sound(snd_surfrock,2,true);
}
if(place_meeting(x,y,o_player) && room == rm_Puzzle && !audio_is_playing(snd_surfrock))
{
	audio_play_sound(snd_surfrock,2,true);
}
if(place_meeting(x,y,o_player) && room == rm_cutscene_lvl3 && !audio_is_playing(snd_eeriepiano))
{
	audio_play_sound(snd_eeriepiano,2,true);
}
if(place_meeting(x,y,o_player) && room == rm_Lvl3 && !audio_is_playing(snd_level3_music))
{
	audio_play_sound(snd_level3_music,2,true);
}
if(place_meeting(x,y,o_player) && room == rm_finalboss && !audio_is_playing(snd_level3_music))
{
	audio_play_sound(snd_level3_music,2,true);
}
