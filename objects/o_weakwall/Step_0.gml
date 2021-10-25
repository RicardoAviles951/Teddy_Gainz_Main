/// @description Insert description here
// You can write your code in this editor

//if (place_meeting(x,y,o_player) && keyboard_check(vk_shift)) 

//{
	//instance_deactivate_object(o_weakwall);
//}
if(is_broken == false) sprite_index = s_weakwall;
if(is_broken == true) sprite_index = s_weakwall_broken;
if(place_meeting(x,y, o_player)) && (global.state == states.dash) && !audio_is_playing(snd_web) && is_broken == false {
	audio_play_sound(snd_web,2,false);
	is_broken = true;
	image_index = 0;
	image_speed = 1;
}
if(image_index = 1) {
	image_speed = 0;
	}