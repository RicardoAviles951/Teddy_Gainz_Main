// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_vertical(){
if alarm[1] = -1 alarm[1] = 60;
topwall = false;
bottomwall = false; 
image_angle = 90;
spider_input();
get_movementV();
stuck_in_tile();
spider_collisions();
guide();
snap();
anim_spider();

if !audio_is_playing(snd_crawling) audio_play_sound(snd_crawling,1,true);

}