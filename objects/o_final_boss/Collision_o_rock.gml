switch(global.boss_state) {
	case boss.phase_1: if(global.hittable == true) 
	{
		audio_play_sound(snd_boss_damage,1,false);
		global.boss_health -= 1;
		global.hittable = false;
		show_debug_message("HIT first");
	}
	break;
	case boss.phase_2: if(global.hittable == true) 
	{
		audio_play_sound(snd_boss_damage,1,false);
		global.boss_health -= 1;
		global.hittable = false;
		show_debug_message("HIT second");
	}
	break;
	case boss.phase_3: if(global.hittable == true) 
	{
		audio_play_sound(snd_boss_damage,1,false);
		global.boss_health -= 1;
		global.hittable = false;
		show_debug_message("HIT Last");
	}
	break;	
}

