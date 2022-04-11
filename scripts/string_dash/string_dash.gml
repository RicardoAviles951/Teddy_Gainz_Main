// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_dash(){
if instance_exists(o_spider){	
	switch(o_spider.spider_state){
		case spider_boss.swing_1:
			if place_meeting(x,y,o_string) {
				with(o_string) sprite_index = s_web_distressed;
				if alarm[5] = -1 alarm[5] = 120;//Delays the switch to idle state
			}
		break;
		
		case spider_boss.swing_2:
			if place_meeting(x,y,o_string) {
				with(o_string) sprite_index = s_web_distressed;
				if alarm[5] = -1 alarm[5] = 120;
				}
		break;
		
		case spider_boss.swing_3:
			if place_meeting(x,y,o_string) {
				with(o_string) sprite_index = s_web_distressed;
				if alarm[5] = -1 alarm[5] = 120;
				}
		
		break;
	}
}
}