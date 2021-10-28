
switch ( global.room ) {
	case rooms.cut_intro: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 1000);
		}
		break;
	case rooms.menu_room: if(!audio_is_playing(snd_teddylogo)) {
		audio_play_sound(snd_teddylogo,1,true)
		audio_sound_gain(snd_teddylogo,.35, 3000);
		}break;
	case rooms.tutorial: if(!audio_is_playing(snd_waves) && !audio_is_playing(snd_surfrock)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 5000);
		//audio_play_sound(snd_surfrock,2, true);
		//audio_sound_gain(snd_surfrock,.45, 5000);
		} break;
	case rooms.level1: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 5000);
		//audio_play_sound(snd_surfrock,2, true);
		//audio_sound_gain(snd_surfrock,.45, 5000);
		} break;
	case rooms.puzzleboss: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.8, 5000);
		}
		break;
	case rooms.cut_lv3: if(!audio_is_playing(snd_spookywind_ambient)){
		audio_play_sound(snd_spookywind_ambient,2,true);
		} break;	
	case rooms.level3: if(!audio_is_playing(snd_spookywind_ambient)){
		audio_play_sound(snd_spookywind_ambient,2,true);
		} break;	
}
if(instance_exists(o_rock) && !audio_is_playing(snd_rock_fall)){
	audio_play_sound(snd_rock_fall,2, false);
	audio_sound_gain(snd_rock_fall,0,3000);
}
if(global.cam_shake == true && !audio_is_playing(snd_rumble))
{
		audio_play_sound(snd_rumble, 2, false);
}









 




