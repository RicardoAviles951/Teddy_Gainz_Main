
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
				//path_position = 0;
			}
			
		}
		with(o_mama)
		{
			image_xscale = 1;
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
		with (o_crystal_cutscene)
		{
			image_alpha += .01;
			if(path_cryst == false)
			{
				audio_play_sound(snd_eeriepiano, 2, true);
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
			instance_create_layer(o_player.x-32,o_player.y-64,"Instances",o_double_exclamation)
		
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
		
		case 16:
		#region
		with (o_thicc)
		{
			image_xscale = -1;
			sprite_index = s_thicc_idle;
		}
		
		target = o_thicc; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x+100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Matey? What's wrong?";
			
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
		
		case 17:
		#region Teddy speaks. Line114.
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "...I know that it's dangerous, but...";
			
			 if(counter == 180 || (keyboard_check_pressed(vk_space)))
			{
			 //instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	++currentStep;
			}
			
		else
			{
			 ++counter;
			}
			
		break;
		#endregion
		
		case 18: 
		#region Tedy speaks
		if(instance_exists(o_dialogue_box))
			dB.myText = "(Something still doesn't feel right. And it's because the Ghosts' words are still ringing in my head.)";
		 if(counter == 180 || (keyboard_check_pressed(vk_space)))
			{
			 //instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		break;
		#endregion
		
		case 19: 
		#region Teddy speaks
		if(instance_exists(o_dialogue_box))
			dB.myText = "(I just have a feeling that... this isn't over yet!)";
		 if(counter == 180 || (keyboard_check_pressed(vk_space)))
			{
			 //instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		break;
		#endregion
		case 20: 
		#region Teddy exclaims
		if(instance_exists(o_dialogue_box))
			dB.myText = "They left all their hopes with me. I need to do it..!";
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
		
		case 21: 
		#region Thicc turns around and yells
		
		with(o_thicc)
		{
			sprite_index = s_thicc_run;
		}
		target = o_thicc; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x+100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Hey, where are you going?!";
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
		
		case 22: 
		#region  Teddy responds
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-100, center_y,"Instances", o_dialogue_box);
			dB.myText = "To the crystals!!";
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
		
		case 23: 
		#region thicc responds
		target = o_thicc; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x+100, center_y,"Instances", o_dialogue_box);
			dB.myText = "Matey!! It's dangerous!!";
		if(counter == 180 || (keyboard_check_pressed(vk_space)))
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
		
		case 24: 
		#region Mama exclaims
		with (o_mama)
		{
			image_xscale = -1;
		}
		if(instance_exists(o_dialogue_box))
			dB.myText = "Mama: Teddy, no!!";
		 if(counter == 120 || (keyboard_check_pressed(vk_space)))
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
		
		case 25:
		#region Teddy jumps towards crystal
		with(o_player)
		{
			if(path_teddy == false)
			{
				path_start(pth_teddy, 5,path_action_stop, true);
				image_index = 1;
				sprite_index = s_player_dash;
				path_teddy = true;
			}
			else
			{
				global.state = states.dash;
				image_index = 1;
				sprite_index = s_player_dash;
			}
			
		}
		 if(counter == 25)
			{
			 //instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		break;
		#endregion
		
		case 26: 
		#region Fade out
		with (o_fade_ctr)
		{
			trigger = true;
		}
		audio_stop_all();
		if(counter == 30)
			{
			 //instance_destroy(o_dialogue_box, true);
			  with(o_fade_ctr)
			 {
				trigger = false; 
			 }
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
				
		break;
		#endregion
		
		case 27: 
		#region Reset positions
		with (o_final_boss)
		{
			instance_destroy();
		}
		with(o_player)
		{
			x = o_tutorial_spawn.x;
			y = o_tutorial_spawn.y;
			image_xscale = -1
			global.state = states.player_idle;
		}
		with(o_thicc)
		{
			sprite_index = s_thicc_idle;
		}
		if(counter == 120)
			{
			 //instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
			
		break;
		#endregion
		
		case 28:
		#region Mama question
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x-150, center_y,"Instances", o_dialogue_box);
			dB.myText = "Mama: What... just happened?";
			
		if(counter == 120 || keyboard_check_pressed(vk_space))
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
		
		case 29: 
		#region
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: There was a huge flash and then, the building... isn't collapsing anymore..?";
			
			if(counter == 300 || keyboard_check_pressed(vk_space))
			{
			show_debug_message("CASE 29 OVER");
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		break;
			#endregion
			
		case 30: 
		#region
		show_debug_message("CASE 30!!!");
		if(instance_exists(o_dialogue_box))
			dB.myText = "???: ...Teddy...";
			case_switch_120();
			break;
			#endregion
			
		case 31:
		#region
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Huh?";
			case_switch_120();
		break;
		#endregion
		
		case 32:
		#region
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy...";
		if(!instance_exists(o_final_boss))
		{
		instance_create_layer(o_dialogue_box.x+100,o_dialogue_box.y+150,"Instances",o_final_boss);
		}
			with(o_final_boss)
			{
				global.boss_state = boss.idle;
				image_alpha = 0;
			}
			case_switch_120();
		break;
		#endregion
		
		case 33:
		#region
		with(o_final_boss)
		{
		if(image_alpha <1)
					{
						image_alpha +=.1
					}
		}
		if(o_final_boss.image_alpha = 1)
			{
		 		 ++currentStep;
			}
		break;
		#endregion
		
		case 34:
		#region
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Wha... WHAAAAAAAAAAA?!?!?!";
			case_switch_120();
		break;
		#endregion
		
		case 35:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Please, do not be afraid. I am the King of the colony on this island.";
			case_switch_120();
		break;
		
		case 36:
		#region Bug line 131
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: The power of the crystals you activated... is what has banished the evil from this island.";
			case_switch_120();
		break;
		#endregion
		
		case 37:
		#region Teddy line 132
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Banished... the evil..?";
			case_switch_120();
		break;
		#endregion
		
		case 38:
		#region Teddy line 133
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Do you mean... you are not the 'Bad Bug'?";
			case_switch_120();
		break;
		#endregion
		
		case 39:
		#region Bug
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Huh ho ho, be not surprised!That is correct. You must be referring to the terms the Elderly Ones- or the 'Ghosts', you may say- have been saying.";
			case_switch_120();
		break;
		#endregion
		
		case 40: 
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: The Bad Bug... is more so of a parasite. They feed into our systems, take control of our bodies, our minds... and they control their hosts like slaves.";
			case_switch_120();
		break;
		#endregion
		
		case 41:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: It is all for their purpose of producing as many offspring as they can, and they latch onto the other members of our colony... Oh, it was an absolute horror.";
			case_switch_120();
		break;
		#endregion
		
		case 42:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc; But those crystals right there that matey touched- that had some sort of powers, seeing from what happened.";
			case_switch_120();
		break;
		#endregion
		
		case 43:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Indeed. Those crystals- they have the power of 'purification'. They work to banish the evil, impure beings on this land.";
			case_switch_120();
		break;
		#endregion
		
		case 44: 
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: However, there is one major fault to the system. It is that... the user must exercise both their arms and courage in order to activate the powers.";
			case_switch_120();
		break;
		
		case 45:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy; That... is definitely something within my league! Yeah!";
			case_switch_120();
		break;
		#endregion
		
		case 46:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "The crystals materialized their powers as falling rocks when I was still taken under control, as they were working against me- the being that was possessed by the Primary Evil.";
			case_switch_120();
		break;
		#endregion
		
		case 47:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Ah, so that's the trick behind all of this...";
			case_switch_120();
		break;
		#endregion
		
		case 48:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Yes... But now, I can sense that all is well on this island. Now we could go back to our peaceful, herbivorous days.";
			case_switch_120();
		break;
		#endregion
		case 49:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Mama: Wait- I just want to confirm this. You all do not consume meat normally? Is that correct?";
			case_switch_120();
		break;
		#endregion
		
		case 50:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Precisely.";
			case_switch_120();
		break;
		#endregion
		
		case 51:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Mama: My my oh my, that is a big surprise, but also a big relief! I was about to lose my marbles when those who took me from Sunnyside were chanting about 'chicken protein'!";
			case_switch_120();
		break;
		#endregion
		
		case 52: 
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Huh ho, do not worry... Please let me express my sincere apology to you, ma'am. Now, Teddy Gainz. I have a request for you.";
			case_switch_120();
		break;
		#endregion
		
		case 53:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Again, you and your loved ones have gone through so much... yet, you were the ones who saved our colony as well. Words cannot express the amount of gratitude we have for you.";
			case_switch_120();
		break;
		#endregion
		
		case 54:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Together with your lovely mother and your fellow friend there, I would like to formally re-invite you to the Reaper Festival.";
			case_switch_120();
		break;
		#endregion
		
		case 55:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: ...Friend...";
			case_switch_120();
		break;
		#endregion
		
		case 56: 
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: Though the name may resemble the grim being, 'reap' in our colony calls for harvest and riches of the land.";
			case_switch_120();
		break;
		#endregion
		
		case 57: 
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Bug: It is meant to be celebrated annually with our loved ones... and as you, being our savior armed with great courage, are cordially invited to this ceremony.";
			case_switch_120();
		break;
		#endregion
		
		case 58:
		#region 
		if(instance_exists(o_dialogue_box))
			dB.myText = "King... Thank you for the honor...Yes, I would like to partake in the festival... With great pleasure!";
			case_switch_120();
		break;
		#endregion
		
		
		case 59:
		audio_stop_all()
		instance_destroy(o_cutscene_ending, true);
		room_goto_next();
		break; 
		
}
}
else if (currentState == cutSceneStates.Paused) {
	
}