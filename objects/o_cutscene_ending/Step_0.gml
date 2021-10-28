
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
		#region Cam moves towards teddy
		with(o_cutscene_cam)
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
		#endregion
		case 1: 
		#region Teddy dialogue 
		target = o_player; 
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
		#endregion
		case 2: 
		#region More dialogue before shake.
		target = o_player; 
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
		#endregion
		case 3:
		#region Room shakes and rocks fall. Teddy dialogue.
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
		#endregion	
		case 4: 
		#region Mama appears and camera pans to her.
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
		#endregion
		case 5: 
		#region Mama yells out for teddy. Teddy turns around.
		target = o_mama; 
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
		#endregion
		case 6: 
		#region Teddy responds line 106
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Mum! Are you okay?";
		
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
		
		#endregion
		
		case 7:
		#region Mama responds. line 107
		target = o_mama; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "Yes, I am perfectly fine. I am more worried about you, my darling. My my oh my, you have turned so FIERCE! Facing that darn scary moth like that!";
		
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
		#endregion
		
		case 8:
		#region Teddy responds.line 108
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Haha, well, there was a lot that happened on the way.";
		
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
		#endregion
		case 9: 
		#region Thicc appears.
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
		#endregion
		case 10: 
		#region Thicc asks Teddy if he needs help. 
		target = o_thicc; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
			if(!instance_exists(o_dialogue_box))
					dB = instance_create_layer(center_x, center_y,"Instances_1", o_dialogue_box);
					dB.myText = "Matey! Need some assistance with helping your Mum?";
		
		
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
		#endregion
		
		case 11:
		#region Teddy talks. line 110
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Thicc! Thank you so much.";
		
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
		#endregion
		
		case 12:
		#region Teddy talks. Line 111
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Mum, let's continue talking after we evacuate. It's not safe if we stay here.";
		global.cam_shake = true;
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
		#endregion
		
		case 13:
		#region thicc moves to upper platform. 
		with (o_thicc)
		{
			path_activated = false;
			show_debug_message("PATH" + string(path_activated));
			if(path_activated == false)
			{
				show_debug_message("THICCCCCCCC");
				image_xscale = 1;
				image_index = 3;
				image_speed = 1;
				sprite_index = s_thicc_jump;
				path_start(pth_thicc2,5,path_action_stop,true);
				path_activated = true;
				path_position = 0;
			}
			if(path_position==1)
			{
				sprite_index = s_thicc_idle;
				path_end();
				path_activated = true;
			}
			
		}
		with (o_crystal) {
			image_alpha = 0;
		}
		
		 if(counter == 60) || (keyboard_check_pressed(vk_space))
			{
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		break;
		#endregion
		
		case 14:
		#region Crystal appears
		with (o_crystal)
		{
			image_alpha += .01;
			if(path_cryst == false)
			{
				path_start(pth_crystal,1,path_action_stop,true);
				path_cryst = true;
			}
			
		}
		if(counter == 240)
		{
			counter = 0;
			++currentStep;
		}
		else
		{
			++counter;
		}
		
		break;
		#endregion
		
		case 15: 
		#region Teddy emotes and thicc speaks.
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		
			if(!instance_exists(o_double_exclamation))
			instance_create_layer(o_player.x,o_player.y-64,"Instances",o_double_exclamation)
		
			if(counter == 180)
				{
					 counter = 0;
		 			 ++currentStep;
				}
			
			else
				{
					++counter;
				}
		
		break;
		#endregion
		case 16: instance_destroy(o_cutscene_trigger, true);
				
		break;
		
}
}
else if (currentState == cutSceneStates.Paused) {
	
}