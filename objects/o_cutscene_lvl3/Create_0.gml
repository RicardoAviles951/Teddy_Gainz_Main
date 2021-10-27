/// @description Insert description here
// You can write your code in this editor

event_inherited();
global.state = states.player_idle;
target =  noone;

//Event specific variables
//bgMusic = audio_play_sound(snd_waves, 1, 1);

if(!instance_exists(o_cutscene_lvl3))
{
	instance_create_layer(x,y,"Instances", o_cutscene_lvl3);
}
