/// @description Dictates next state
switch(last_state){
	case spider_boss.swing_1: 
	o_string.sprite_index = s_web_fine;
	summon_max = 6;
	shake_time = 90;
	image_speed = 0;
	image_index = 1; 
	spider_state = spider_boss.swing_2;
	break;
	case spider_boss.swing_2: 
	summon_max = 8;
	shake_time = 120;
	o_string.sprite_index = s_web_fine;
	image_speed = 0;
	image_index = 1; 
	spider_state = spider_boss.swing_3; 
	break;
	
	case spider_boss.swing_3:
	summoning = false; 
	spider_state = spider_boss.broken; 
	break;
	//Cutscene here
}