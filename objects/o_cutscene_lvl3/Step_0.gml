/// @description Cutscene actions
// You can write your code in this editor
target = o_player;
var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //create dialogue box above Teddy
							
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Teddy: Wow, I bet this place was really pretty before it was so broken down. "; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
			
			break;
		
		case 1: // Teddy. Line 58
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Teddy: Now it looks a little.... no... REALLY scary... "; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
		break;
		
		case 2: //??? Line 59
		
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "???: Teddy... Teddy... Do you hear us? "; //dialogue that will draw in the dialogue box
				
			with (o_ghost_powerup)
			{
				if(path_on == false)
					{
						audio_play_sound(snd_ghost,2,false);
						image_alpha = .65;
						path_start(pth_ghost1, 1,path_action_reverse, true);
						path_on = true;
					}
			}
			
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
			
		break;
		
		case 3: //Teddy. Line 60
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Teddy: Huh? Am I hearing something?"; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
			
		break;
		
		case 4: //??? Line 61
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "???: Teddy... Do you hear us?"; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
			
		break;
		
		case 5: //Teddy. Line 62
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Teddy: WHA- ARE THOSE GHOSTS?"; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
		break;
		
		case 6: //Bug ghosts. Line 63
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Bug ghosts: Please, do not be afraid. We are here to guide you on this journey."; //dialogue that will draw in the dialogue box
								
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
		break;
		
		case 7: //Bug ghosts. Line 64

		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: We are the bugs from the near and distant past, before the Bad Bug came to our island."; 
								
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
		
		case 8: //Teddy. Line 65. Player choice
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: 1) The Bad Bug? 2) You're scary is what you are."; 
								
			
			if(keyboard_check_pressed(vk_numpad1))
			
			{
				instance_destroy(o_dialogue_box, true);
				++currentStep;
			}
			
			if(keyboard_check_pressed(vk_numpad2))
			{
				instance_destroy(o_dialogue_box, true);
				++currentStep;
			}
			
			break;
			
		case 9: //Bug ghosts. Line 66
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: Huh ho... Let us tell you."; 
								
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
			
		case 10: //Bug ghosts. Line 67 pt1
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
				dB.myText = "Bug ghosts: The Bad Bug came and took away our tranquil island."; 
								
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
		
		case 11: //Bug ghosts. Line 67 pt2
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: Otherwise, we would not end up in such a form..."; 
								
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
		
		case 12: //Bug ghosts. Line 68
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: It's dangerous to go with only your body, though it may be mighty. Please take us with you."; 
								
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
			
			case 13: //Bug ghosts. Line 69
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: Use our spirit to get through walls and doors. We only last so long here, so use it wisely."; 
								
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
			
			
			case 14: //Bug ghosts. Line 69
		
		if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: And the crystals... that is the weakness... of the Bad Bug... "; 
								
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
			
			case 15: //Bug ghosts. Line 69
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: And you must touch those cyrstals... with your arms to... save..."; 
								
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
			
			case 16: //Bug ghosts. Line 69
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: He- hey, you're starting to cut off-"; 
								
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
			
			case 17: //Bug ghosts. Line 73
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: Teddy... You are our only hope..."; 
								
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
			
			case 18: //Bug ghosts. Line 74
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Bug ghosts: Teddy... You are our only hope..."; 
				
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
			
			case 19: //Teddy. Line 75
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: A deserted graveyard, and g- ghosts..."; 
								
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
			
			case 20: //Teddy. Line 76
		
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: ...No, don't be such a chicken, Teddy! I already got this far, and now, it's just my Mum."; 
								
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
			
			case 21: //Teddy. Line 77
			
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: And the crystals, they said? I'll keep my eye out for that."; 
								
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
			
			case 22: //Teddy. Line 78
			
			if(!instance_exists(o_dialogue_box))
				dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box); 
				dB.myText = "Teddy: With the ghosts' coop-eration, and my heart set to doing it... Let's do this!"; 
								
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
			
			case 23: //Load the next room
			audio_stop_all();
			room_goto_next();
			
			break;
			
			
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
