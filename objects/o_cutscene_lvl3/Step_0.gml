

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //create dialogue box above Teddy
		if counter >=60{					
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0, 0,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_teddy;
				dB.myText = "Wow, I bet this place was really pretty before it was so broken down. "; //dialogue that will draw in the dialogue box
				dB.box_spr = 2;
				case_switch_120();
		}
		counter++;
			break;
		
		case 1: // Teddy. Line 58
				dB.myText = "Now it looks a little.... no... REALLY scary... "; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; //move to the next case
			}
		
		break;
		
		case 2: //??? Line 59
			dB.sprite = s_portrait_ghosts;
			dB.myText = "Teddy... Teddy... Do you hear us? "; //dialogue that will draw in the dialogue box
				
			with (o_ghost_powerup)
			{
				if(path_on == false)
					{
						audio_play_sound(snd_ghost,2,false);
						image_alpha = .45;
						path_start(pth_ghost1, 1,path_action_reverse, true);
						path_on = true;
					}
			}
			
			case_switch_120();
		break;
		
		case 3: //Teddy. Line 60
				dB.sprite = s_portrait_teddy;
				dB.myText = "Huh? Am I hearing something?"; 
				
			if(!instance_exists(o_question))
			{
				instance_create_layer(320, 560, "Instances",o_question);
			}
								
			if(keyboard_check_pressed(vk_space))
			{
				instance_destroy(o_question);
				dB.spell_cnt = 0;
				++currentStep; 
			}
		break;
		
		case 4: //??? Line 61
				dB.sprite = s_portrait_ghosts;
				dB.myText = "Teddy... Do you hear us?"; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				dB.spell_cnt = 0;
				++currentStep; //move to the next case
			}
		break;
		
		case 5: //Teddy. Line 62
				dB.sprite = s_portrait_teddy;
				dB.myText = "WHA- ARE THOSE GHOSTS?"; //dialogue that will draw in the dialogue box
				
				if(!instance_exists(o_dumbfounded))
			{
				instance_create_layer(320, 560, "Instances",o_dumbfounded);
			}
								
			if(keyboard_check_pressed(vk_space)) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dumbfounded,true);
				dB.spell_cnt = 0;
				++currentStep; //move to the next case
			}
		break;
		
		case 6: //Bug ghosts. Line 63
		dB.sprite = s_portrait_ghosts;
		dB.myText = "Please, do not be afraid. We are here to guide you on this journey."; //dialogue that will draw in the dialogue box				
			if(keyboard_check_pressed(vk_space)) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				dB.spell_cnt = 0;
				++currentStep; //move to the next case
			}
		break;
		
		case 7: //Bug ghosts. Line 64
				dB.myText = "We are the bugs from the near and distant past, before the Bad Bug came to our island."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
		break;
		
		case 8: //Teddy. Line 65. Player choice
				dB.sprite = s_portrait_teddy;
				dB.myText = "1) The Bad Bug?\n2) You're scary is what you are."; 
				dB.choice = true;
				
				if(keyboard_check_pressed(vk_numpad1) or keyboard_check_pressed(vk_numpad2) or keyboard_check_pressed(ord("1")) or keyboard_check_pressed(ord("2")))
				{
					dB.spell_cnt = 0;
					dB.choice = false;
				    ++currentStep; 
				}
								
			
			
			break;
			
		case 9: //Bug ghosts. Line 66
				dB.sprite = s_portrait_ghosts;
				dB.myText = "Huh ho... Let us tell you."; 
								
			if(keyboard_check_pressed(vk_space))
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
		case 10: //Bug ghosts. Line 67 pt1
				dB.myText = "The Bad Bug came and took away our tranquil island."; 
								
			if(keyboard_check_pressed(vk_space))
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
		
		case 11: //Bug ghosts. Line 67 pt2
				dB.myText = "Otherwise, we would not end up in such a form..."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
		
		case 12: //Bug ghosts. Line 68
				dB.myText = "It's dangerous to go with only your body, though it may be mighty. Please take us with you."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
			case 13: //Bug ghosts. Line 69
				dB.myText = "Use our spirit to get through walls and doors. We only last so long here, so use it wisely."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;	
			
			
			case 14: //Bug ghosts. Line 69
				dB.myText = "And the crystals... that is the weakness... of the Bad Bug... "; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;	
			
			case 15: //Bug ghosts. Line 69
		
				dB.myText = "And you must touch those crystals... with your arms to... save..."; 
								
			if(keyboard_check_pressed(vk_space))
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;	
			
			case 16: //Bug ghosts. Line 69
				dB.sprite = s_portrait_teddy;
				dB.myText = "He- hey, you're starting to cut off-"; 
								
			if(keyboard_check_pressed(vk_space))
			{
				dB.spell_cnt = 0; 
				++currentStep; 
			}
			break;	
			
			case 17: //Bug ghosts. Line 73
				dB.sprite = s_portrait_ghosts;
				dB.myText = "Teddy... You are our only hope..."; 
								
			if(keyboard_check_pressed(vk_space))
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;	
			
			case 18: //Bug ghosts. Line 74
				dB.sprite = s_portrait_teddy;
				dB.myText = "They disappeared."; 
				
			with (o_ghost_powerup)
			{
				audio_play_sound(snd_ghost,2,false);
				audio_sound_gain(snd_ghost,0,500);
				image_alpha -=.01;
				if(image_alpha <= 0) 
					{
						instance_destroy();
					}
			}
			
			if(!instance_exists(o_exclamation))
			{
				instance_create_layer(320, 560, "Instances",o_exclamation);
			}
								
			if(keyboard_check_pressed(vk_space))
			{
				instance_destroy(o_exclamation,true);
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
			case 19: //Teddy. Line 75
				dB.myText = "A deserted graveyard, and g- ghosts..."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
			case 20: //Teddy. Line 76
		
				dB.myText = "...No, don't be such a chicken, Teddy! I already got this far, and now, it's just my Mum."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
			case 21: //Teddy. Line 77
			
			dB.myText = "And the crystals, they said? I'll keep my eye out for that."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep; 
			}
			break;
			
			case 22: //Teddy. Line 78
			
				dB.myText = "With the ghosts' coop-eration, and my heart set to doing it... Let's do this!"; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				instance_destroy(o_dialogue_box, true);  
				++currentStep; 
			}
			break;
			
			case 23: //Load the next room
			audio_stop_all();
			room_goto_next();
			
			break;
			
			
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
