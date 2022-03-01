switch(spider_state){
	case spider.horz: 
	state_horizontal();
	break;
	
	case spider.vert:
	state_vertical();
	break;
}
collision_check();
if(Hwall_collided)
{
	
	if(spider_state != spider.vert and climbing == false){
	//show_debug_message("changing state vert");
	spider_state = spider.vert;
	}
	//show_debug_message("Hwall")
	//if(keyboard_check(vk_up) or keyboard_check(vk_down)) {
		//spider_state = spider.vert;
	//}//
}
if(Vwall_collided)
{
	if(spider_state != spider.horz and climbing == true){
	//show_debug_message("changing state horz");
	spider_state = spider.horz;
	}
	//if(keyboard_check(vk_left) or keyboard_check(vk_right)) spider_state = spider.horz;
}	

if(place_meeting(x,y,o_death_zone)){
	//show_debug_message("DESTROYED");
	instance_destroy();
}
//show_debug_message("leftwall: " + string(leftwall));
//show_debug_message("rightwall: " + string(rightwall));
//show_debug_message("image Xscale :" + string(image_xscale));
//show_debug_message("image Yscale :" + string(image_yscale));
//show_debug_message("image angle: " + string(image_angle));
//show_debug_message("Spider state: " + string(spider_state));
//show_debug_message("vsp: " + string(vsp));
