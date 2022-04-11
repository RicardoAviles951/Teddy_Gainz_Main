//Oscillates between 1 and -1 by a value stored in swing_spd
//note that ropeAngle is first specified in the create event as a point distance.
var ropeAngleAcceleration = swing_spd * dcos(ropeAngle);
ropeAngleVelocity += ropeAngleAcceleration;
//sets rope angle 
ropeAngle += ropeAngleVelocity;
//ropeAngleVelocity *= .99; //dampener to slow down
ropeX = grappleX + lengthdir_x(ropeLength,ropeAngle);
ropeY = grappleY + lengthdir_y(ropeLength,ropeAngle);

//Stages of swinging as the battle progresses 
switch(spider_state){
	case spider_boss.swing_1:
		last_state = spider_boss.swing_1;

		hsp = ropeX - x;
		vsp = ropeY - y;
		x+=hsp;
		y+=vsp;
		image_angle = ropeAngle +90;
	break;

	case spider_boss.swing_2:
		last_state = spider_boss.swing_2;
		if grappleY < -736 grappleY +=2;
		ropeAngle +=.75;
		hsp = ropeX - x;
		vsp = ropeY - y;
		x+=hsp;
		y+=vsp;
	    image_angle = ropeAngle +90;
	break;
	
	case spider_boss.swing_3:
		last_state = spider_boss.swing_3;
		if grappleY < -736 grappleY +=2;
		ropeAngle +=.85;
		hsp = ropeX - x;
		vsp = ropeY - y;
		x+=hsp;
		y+=vsp;
	    image_angle = ropeAngle +90;	
	
	break;
	
	case spider_boss.swing_idle: 
	if grappleY > -1000//Below highest point
		{
			grappleY -=2; //Move up
		}
	else 
		{
			if ((baby_count > 7) and alarm[1] = -1)
			{
				alarm[1] = 600;
			}
		}
	if grappleY = -998 summoning = true;
	ropeAngleVelocity *= .99; //dampener to slow down
	hsp = ropeX - x;
	vsp = ropeY - y;
	x+=hsp;
	y+=vsp;
    image_angle = ropeAngle +90;
	break;
}
key_spider = keyboard_check_pressed(vk_up);//Dev purposes only

if key_spider {
	summoning = true;
}

//Variable summoning stores whether spiders can be summoned. 
if summoning {
	if alarm[0] = -1 {
		//Creates spiders on left side
		with(instance_create_layer(36,-20,"spider",o_spider_baby)){
			image_yscale = -1;
			image_xscale = -1;
			image_angle = 90;
		}
		//Creates spiders on right side
		instance_create_layer(1276,-8,"spider",o_spider_baby);
		baby_count +=2;
		//Spawns every half second
		alarm[0] = 30;
	}
	if alarm[2] = -1{
		//Applies camera shake
		layer_set_fx("fx_shake",o_effect_ctr.shake_fx);
		alarm[2] = shake_time;
	}
}

//summons balloon
if(!instance_exists(o_balloon_up)) {
	instance_create_layer(640,576,"balloon",o_balloon_up);
}


//DEBUG FUNCTIONS
//show_debug_message("SUMMON TIME: " + string(summon_time));
if keyboard_check_pressed(vk_right) spider_state = spider_boss.swing_idle;
if keyboard_check_pressed(vk_left) {
	spider_state = spider_boss.swing_3;
	o_string.sprite_index = s_web_distressed;
}
show_debug_message(baby_count);