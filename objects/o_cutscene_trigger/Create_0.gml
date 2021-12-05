/// @description Insert description here
// You can write your code in this editor
target = noone;
box = s_dialogue_alt;
event_inherited();

//Event specific variables
//bgMusic = audio_play_sound(snd_waves, 1, 1);

if(!instance_exists(o_cutscene_trigger))
{
	instance_create_layer(x,y,"Instances", o_cutscene_trigger);
}
