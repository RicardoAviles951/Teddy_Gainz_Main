// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function death_state(){
if cluck_played == false{
	audio_play_sound(snd_death_cluck,1,false);
	cluck_played = true;
}
alt_tile_collisions();
sprite_index = s_player_death;
vsp = 5;
hsp = 0;
image_alpha-=.01;
if(alarm[4] = -1) {
	alarm[4] = 60;
}
}