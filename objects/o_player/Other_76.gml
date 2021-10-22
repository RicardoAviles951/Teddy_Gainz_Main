/// @description Checks specific frames of movement sprites to play sounds.
if(event_data[? "event_type"] == "sprite event") {
	switch (event_data[? "message"]){
		case "footstep" : if(room == rm_Tutorial or room == rm_Lvl1) {
		audio_sound_pitch(snd_walk_sand,1.5);
		audio_play_sound(snd_walk_sand,2,false);
		}
		break;
	}
}
