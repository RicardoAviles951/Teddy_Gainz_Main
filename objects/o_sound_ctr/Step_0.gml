
switch ( global.room ) {
	case rooms.cut_map: if(!audio_is_playing(snd_intro_bitter))
	{
		audio_play_sound(snd_intro_bitter,1,true);
	}
	
	break;
	case rooms.cut_intro: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 1000);
		}
		break;
	case rooms.menu_room: if(!audio_is_playing(snd_teddylogo)) {
		audio_play_sound(snd_teddylogo,1,true)
		audio_sound_gain(snd_teddylogo,.8, 6000);
		}break;
	case rooms.tutorial: if(!audio_is_playing(snd_waves) && !audio_is_playing(snd_surfrock)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 5000);
		//audio_play_sound(snd_surfrock,2, true);
		//audio_sound_gain(snd_surfrock,.45, 5000);
		} break;
	case rooms.cut_level1:
	if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 5000);	
	}
	break;
	case rooms.level1: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.7, 5000);
		//audio_play_sound(snd_surfrock,2, true);
		//audio_sound_gain(snd_surfrock,.45, 5000);
		} break;
	case rooms.puzzleboss: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		}
		audio_sound_gain(snd_waves,.8, 5000);
		
		break;
	case rooms.cut_level2:
		if(!audio_is_playing(snd_level_2)){
			audio_play_sound(snd_level_2,1,true);
			//audio_sound_pitch(snd_level_2,.3);
		}
		audio_sound_gain(snd_level_2,.1,2000);
	break;
		
	case rooms.level2:
		if(!audio_is_playing(snd_level_2)){
			audio_play_sound(snd_level_2,1,true);
			//audio_sound_pitch(snd_level_2,.3);
			audio_sound_gain(snd_level_2,.3,2000);
		}
		break;
	case rooms.cut_pre_spiderboss:
	if(!audio_is_playing(snd_eeriepiano)){
			audio_play_sound(snd_eeriepiano,1,true);
			//audio_sound_pitch(snd_level_2,.3);
			//audio_sound_gain(snd_itsybitsy,.3,2000);
			audio_sound_pitch(snd_eeriepiano,.8);
		}
	break;
	case rooms.boss_spider:
	if audio_on == false
	{
			if !audio_is_playing(snd_spiderboss_music) audio_play_sound(snd_spiderboss_music,1,true);
			audio_sound_gain(snd_spiderboss_music,.7,4000);	
	}
	else
	{
		audio_stop_sound(snd_spiderboss_music);
	}
	
	break;
	case rooms.cut_post_spiderboss:
	if(!audio_is_playing(snd_softpiano)){
		audio_play_sound(snd_softpiano,2,true);
	}
	audio_sound_gain(snd_softpiano,.4,4000);
	break;
	
	case rooms.cut_lv3: if(!audio_is_playing(snd_spookywind_ambient)){
		audio_play_sound(snd_spookywind_ambient,2,true);
		} break;	
	case rooms.level3: if(!audio_is_playing(snd_spookywind_ambient)){
		audio_play_sound(snd_spookywind_ambient,2,true);
		} break;	
	case rooms.finalboss:
	if(!audio_is_playing(snd_level3_music))
	{
		audio_play_sound(snd_level3_music,1,true);	
		if global.boss_state != boss.boss_death
		{
			if audio_sound_get_gain(snd_level3_music)<global.music
				{
					audio_sound_gain(snd_level3_music,global.music,2000);
				}
		}
	}
	break;
	case rooms.cut_ending: if(!audio_is_playing(snd_boss_aftermath)){
		audio_play_sound(snd_boss_aftermath,2,true);
		} break;	
	case rooms.cut_ending2: if(!audio_is_playing(snd_waves)){
		audio_play_sound(snd_waves, 1, true);	
		audio_sound_gain(snd_waves,.8, 5000);
		} break;
	case rooms.credits_room: if(!audio_is_playing(snd_credits)){
		audio_play_sound(snd_credits, 1, true);	
		audio_sound_gain(snd_credits,1, 5000);
		} break;
}
if(instance_exists(o_rock) && !audio_is_playing(snd_rock_fall)){
	audio_play_sound(snd_rock_fall,2, false);
	audio_sound_gain(snd_rock_fall,0,2500);
}
if(global.cam_shake == true && !audio_is_playing(snd_rumble))
{
		audio_play_sound(snd_rumble, 2, false);
}
//show_debug_message("audio status " + string(audio_on));
