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
		sprite_index = s_arachne;
		spider_anim();
	break;

	case spider_boss.swing_2:
	    sprite_index = s_arachne;
		last_state = spider_boss.swing_2;
		if grappleY < -736 grappleY +=2;
		ropeAngle +=.75;
		hsp = ropeX - x;
		vsp = ropeY - y;
		x+=hsp;
		y+=vsp;
	    image_angle = ropeAngle +90;
		spider_anim();
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
		sprite_index = s_arachne;
		spider_anim();
	
	break;
	
	case spider_boss.swing_idle: 
		switch(last_state){
			case spider_boss.swing_1:
				if grappleY > hang_height //Below highest point
					{
						grappleY +=hang_spd; //Move up
						sprite_index = s_arachne_crawl_angry;
						image_speed = 1;
					}
				else //If at highest point
					{
						sprite_index = s_arachne_idle_angry;
						if ((baby_count > 7) and alarm[1] == -1)
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
		
			case spider_boss.swing_2:
			if grappleY > hang_height //Below highest point
					{
						grappleY +=hang_spd; //Move up
						sprite_index = s_arachne_crawl_angry;
					}
				else //If at highest point
					{
						sprite_index = s_arachne_idle_angry;
						if ((baby_count > 7) and alarm[1] == -1)
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
		
			case spider_boss.swing_3:
			ropeAngleVelocity *= .99;
			hsp = ropeX - x;
				vsp = ropeY - y;
				x+=hsp;
				y+=vsp;
			    image_angle = ropeAngle +90;
			if alarm[1] == -1 alarm[1] = 30;//Quickly goes to cutscene
				sprite_index = s_arachne_idle_angry;
			break;
	}
	break;
	
	case spider_boss.cutscene:
	hsp = ropeX - x;
	vsp = ropeY - y;
	x+=hsp;
	y+=vsp;
    image_angle = ropeAngle +90;
	spider_anim();
	break;
	
	case spider_boss.broken:
	o_sound_ctr.audio_on = true;
	if sound_played == false{
		audio_play_sound(snd_record_scratch,1,false);
		sound_played = true;
	}
	if o_player.on_ground == true {global.state = states.player_idle;}
	if !instance_exists(o_dialogue_box){
	with(instance_create_layer(x,y,"Instances",o_dialogue_box)){
		sprite = s_portrait_unk;
		myText = "Stop! Stop! Stop! Usually they fall for me by now. You're ruining this VERY IMPORTANT rehearsal time with my babies!!!";
		box_spr = 1;
	}
	}
if instance_exists(o_dialogue_box)
{	
	if keyboard_check_pressed(vk_space)
		{
			audio_stop_all();
			room_goto_next();
		}
}
	ropeAngleVelocity *= .99; //dampener to slow down
	hsp = ropeX - x;
	vsp = ropeY - y;
	x+=hsp;
	y+=vsp;
    image_angle = ropeAngle +90;
	spider_anim();
	break;
}


//Variable summoning stores whether spiders can be summoned. 
if summoning {
	if alarm[0] = -1 {
		//Creates spiders on left side
		with(instance_create_layer(32,0,"spider",o_spider_baby)){
			image_yscale = -1;
			image_xscale = -1;
			image_angle = 90;
		}
		//Creates spiders on right side
		instance_create_layer(1310,-0,"spider",o_spider_baby);
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
	instance_create_layer(672,624,"balloon",o_balloon_up);
}


//DEBUG FUNCTIONS
/*
//show_debug_message("SUMMON TIME: " + string(summon_time));
key_spider = keyboard_check_pressed(vk_up);//Dev purposes only

if key_spider {
	summoning = true;
}
if keyboard_check_pressed(vk_right) spider_state = spider_boss.swing_idle;
if keyboard_check_pressed(vk_left) {
	spider_state = spider_boss.swing_3;
	o_string.sprite_index = s_web_distressed;
}
show_debug_message("State" + string(spider_state));