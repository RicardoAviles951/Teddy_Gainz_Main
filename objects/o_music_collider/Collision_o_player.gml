switch(global.room) {
	case rooms.tutorial: if(!audio_is_playing(snd_surfrock)) 
	{
		audio_play_sound(snd_surfrock,2, true);
	}
	break;
	case rooms.level1: if(!audio_is_playing(snd_surfrock)) 
	{
		audio_play_sound(snd_surfrock,2, true);
	}
	break;
	case rooms.puzzleboss: break;
	case rooms.level3: if(!audio_is_playing(snd_level3_music)) 
	{
		audio_play_sound(snd_level3_music,2, true);
	}
	break;
	case rooms.finalboss: 
	break;
}