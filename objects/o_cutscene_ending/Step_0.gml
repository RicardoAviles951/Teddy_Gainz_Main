
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: with(o_cutscene_cam)
		{
			if point_distance(x, y, o_player.x, o_player.y) > 2
				{
					move_towards_point(o_player.x, o_player.y, 2);
				}
			else speed = 0;
		}
		if(o_cutscene_cam.speed == 0) 
				{
					++currentStep; //move to the next case
				}

		break;
		
		case 1: target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "I... did it?";
		
		
	     if(counter == 180 || (keyboard_check_pressed(vk_space)))
			{
			 instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		
		break;
		
		case 2: target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
			if(!instance_exists(o_dialogue_box))
					dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
					dB.myText = "But something doesn't feel right.";
		
		
			if(counter == 180)
				{
					 instance_destroy(o_dialogue_box, true);
					 counter = 0;
		 			 ++currentStep;
				}
			
			else
				{
					++counter;
				}
		
		break;
		
		case 3:
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		
		global.cam_shake = true;
		
			if(!instance_exists(o_rock))
				{
				instance_create_layer(560,random_range(70,90), "Instances",o_rock);
				instance_create_layer(341,random_range(91,100), "Instances",o_rock);
				} 
		
			if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "Oh no, this building is beginning to collapse! I gotta find Mum and scramble outta here-";
		
			if(counter == 120)
				{
					 instance_destroy(o_dialogue_box, true);
					 counter = 0;
		 			++currentStep;
				}
			
			else
				{
					 ++counter;
				}
				
		break;
			
		case 4: 
		with (o_mama) 
		{
			image_xscale = -1;
		}
		
		global.cam_shake = true;
		
		if(!instance_exists(o_rock)) 
			{
				instance_create_layer(560,random_range(70,90), "Instances",o_rock);
				instance_create_layer(341,random_range(91,100), "Instances",o_rock);
			} 
		with(o_cutscene_cam)
			{
					if point_distance(x, y, o_mama.x, o_mama.y) > 4
						{
							move_towards_point(o_mama.x, o_mama.y, 4);
						}
					else speed = 0;
			}
		if(o_cutscene_cam.speed == 0) 
				{
					++currentStep; //move to the next case
				}
		break;
		
		case 5: target = o_mama; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "Teddy!";
		with (o_player) 
		{
			image_xscale = -1;
		}
		
		
	     if(counter == 60)
			{
			 instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		
		break;
		
		case 6: 
		global.cam_shake = true;
		with (o_thicc)
		{
			if(path_activated == false)
			{
				image_xscale = -1;
				sprite_index = s_thicc_run;
				path_start(pth_thicc,5,path_action_stop,true);
				path_activated = true;
			}
			if(path_position==1)
			{
				path_end();
				sprite_index = s_thicc_idle;
			}
			
		}
		
		 if(counter == 60)
			{
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		
		break;
		
		case 7: 
		target = o_thicc; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
			if(!instance_exists(o_dialogue_box))
					dB = instance_create_layer(center_x, center_y,"Instances_1", o_dialogue_box);
					dB.myText = "Matey! Need some assistance with helping your Mum?";
		
		
			if(counter == 180)
				{
					 instance_destroy(o_dialogue_box, true);
					 counter = 0;
		 			 ++currentStep;
				}
			
			else
				{
					++counter;
				}
		
		break;
		
		
		case 8: instance_destroy(o_cutscene_trigger, true);
				
		break;
		
}
}
else if (currentState == cutSceneStates.Paused) {
	
}