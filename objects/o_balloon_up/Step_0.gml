switch(state_balloon){
	case st_balloon.idle:
		y = y + sin(.05*timer_balloon)*.8;//creates floating effect
		can_grab = true;//is grabbable 
	break;
	
	case st_balloon.grabbed:
if instance_exists(o_player){
	if x != o_player.x x = o_player.x;//set position to players position
	if y != o_player.y y = o_player.y;
	image_index = 3;//Set frame to straight string
	image_angle = o_player.image_angle;//match the players swing
	image_xscale = -1*o_player.image_xscale;
	if o_player.hsp > 7{
		o_player.hsp = 6;
	}
}
	vspd = o_player.vsp;//stores last known speed into a var
	if !audio_is_playing(snd_balloon) and audio_played == false{
		audio_play_sound(snd_balloon,1,false);
		audio_sound_gain(snd_balloon,.5,250);
		audio_played = true;
	}
	break;
	
	case st_balloon.released:
	image_angle = 0; //Resets image angle
	if vspd < 2 vspd = -6;
	y += vspd;//moves balloon by last known speed
    can_grab = false;//not able to be grabbed
	break;
	
}
timer_balloon++;//value that increments every step. used in oscillations 
