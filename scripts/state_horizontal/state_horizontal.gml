// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_horizontal(){
if alarm[0] = -1 alarm[0] = 60;
leftwall = false;
rightwall = false;
image_angle = 0;
spider_input();
get_movementH();
stuck_in_tile();
spider_collisions();
guide();
snap();
anim_spider();

if !audio_is_playing(snd_crawling) audio_play_sound(snd_crawling,1,true);

}