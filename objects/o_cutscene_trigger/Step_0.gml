/// @description Cutscene actions
// You can write your code in this editor
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
			
			
			case 0: 
		if counter >=60{
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_thicc;
				dB.myText = "Aye matey! You look a bit lost there. Care if I show you around?"
				o_thicc.sprite_index = s_thicc_jump
				
			if(keyboard_check_pressed(vk_space)) //if player hits space move to next case
			{
				o_thicc.sprite_index = s_thicc_idle;
				dB.spell_cnt = 0; //resets the variable responsible for spelling out letters in dialouge back to 0
				++currentStep; //move to the next case
			}
		}
			break;
		
		case 1: //Teddy. Line 14
			dB.sprite = s_portrait_teddy;
			dB.myText = "S- sure.";
		
		 if(keyboard_check_pressed(vk_space)) 
			{
			 //instance_destroy(o_dialogue_box, true);
			 dB.spell_cnt = 0;
		 	 ++currentStep;
			}
			break;
		
		case 2: //Teddy. Line 15
			dB.myText = "(A gopher... with legs?!)";
			
		if(!instance_exists(o_shocked_question))
			instance_create_layer(303,481,"Instances",o_shocked_question)
		
		if(keyboard_check_pressed(vk_space)) 
			{
			 instance_destroy(o_shocked_question);
			 dB.spell_cnt = 0;
		 	 ++currentStep;
			}
			break;
		
		case 3: //Thicc. Line 16
			dB.sprite = s_portrait_thicc;
			dB.myText = "Hahah, even more confused, eh? My name is Thicc Legs, and I'm a proud gopher living on this island.";
			o_thicc.sprite_index = s_thicc_jump
		
		if(keyboard_check_pressed(vk_space)) 
			{
			 o_thicc.sprite_index = s_thicc_idle;
			 dB.spell_cnt = 0;
			 ++currentStep;
			}
			break;
		
		case 4: //Thicc. Line 17
			
			dB.myText = "Well, not a native, though. I'm the only gopher here, so it's been a bit lonely spending my time like that. So it's nice meeting ya, matey!"
				
		 if(keyboard_check_pressed(vk_space)) 
			{
			 dB.spell_cnt = 0;
			 ++currentStep;
			}
			break;
		
		case 5:// Teddy. Line 18
			dB.sprite = s_portrait_teddy;
			dB.myText = "Nice to meet you, Thicc. My name is Teddy Gainz."
		
		
		if(keyboard_check_pressed(vk_space)) 
			{
			 dB.spell_cnt = 0;
			 ++currentStep;
			}	
			break;
			
		case 6: //Teddy. Line 19 pt1
			
			dB.myText = "The bugs invited me to their festival, but they kidnapped my Mum as a preparation for their festivity.";
			
		if(keyboard_check_pressed(vk_space)) 
			{
			 //instance_destroy(o_dialogue_box, true);
			 dB.spell_cnt = 0;
			 ++currentStep;
			}	
			break;
			
		case 7: //Teddy. Line 19 pt2
			dB.myText = "I'm here to save her."
			
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
				++currentStep;
			}	
			break;
			
			case 8:// Thicc. Line 20
			dB.sprite = s_portrait_thicc;
			dB.myText = "Aye, you're going against them BUGS! You're a real courageous one, matey."
		
			if(!instance_exists(o_exclamation))
			{
				instance_create_layer(345,481,"Instances",o_exclamation);
			}
			
			if(keyboard_check_pressed(vk_space)) 
				{
				 instance_destroy(o_exclamation, true);
				 dB.spell_cnt = 0;
				 ++currentStep;
				}
			break;
			
			case 9: //Teddy. Line 21
			dB.sprite = s_portrait_teddy;
			dB.myText = "N- no, not really... I'm a bit ashamed to say this, but..."
			
			if(keyboard_check_pressed(vk_space)) 
				{
				 dB.spell_cnt = 0;
				 ++currentStep;
				}
			break;
			
			case 10: //Teddy. Line 22
			dB.myText = "I'm actually terrified of bugs. Tremendously."
		
		if(!instance_exists(o_double_exclamation))
		{
			instance_create_layer(303,481,"Instances",o_double_exclamation);
		}
			
			if(keyboard_check_pressed(vk_space)) 
				{
					instance_destroy(o_double_exclamation);
					dB.spell_cnt = 0;
					++currentStep;
				}				
			break;
			
			case 11: //Thicc. Line 23
			dB.sprite = s_portrait_thicc;
			dB.myText = "Nahh, matey. Don't be so harsh on yourself. I really admire your courage to come here all by yourself, especially when you're scared of them bugs!"
		
			
			if(keyboard_check_pressed(vk_space)) 
				{
					dB.spell_cnt = 0;
					++currentStep;
				}	
			break;
			
			case 12://Thicc. Line 24
			dB.myText = "Never forget your loyalty to your family and friends, matey.";
		
		
		  if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
		 		++currentStep;
			}
		break;
		
		case 13: //Thicc. Line 24 pt2
			dB.myText = "As a loner on this island... that's something I can't value anymore, even if I want to.";
		
		
	     if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
		 		++currentStep;
			}
		break;
		
		case 14: //Teddy. Line 25
			dB.sprite = s_portrait_teddy;
			dB.myText = "Thicc... That's very kind of you. Thank you so much for your words.";
		
		if(!instance_exists(o_ok))
		{
			instance_create_layer(303,481,"Instances",o_ok);
		}
		
	     if(keyboard_check_pressed(vk_space)) || (counter == 360) 
			{
				instance_destroy(o_ok);
				dB.spell_cnt = 0;
		 		++currentStep;
			}
		break;

		case 15: //Teddy. Line 26
			dB.myText = "I actually feel so much better now that I got to talk to you. Would you be kind enough to guide me onto this island?";
		
		
	     if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_cnt = 0;
		 		++currentStep;
			}
		break;
		
		case 16: //Thicc. Line 27
			dB.sprite = s_portrait_thicc;
			dB.myText = "It's a pleasure, matey! The key to survivin' and thrivin' on this island is to RUN and RUN from them bugs.";
		
		if(!instance_exists(o_love))
		{
			instance_create_layer(345,481,"Instances",o_love);
		}
		
	     if(keyboard_check_pressed(vk_space)) 
			{
			 instance_destroy(o_love);
			 dB.spell_cnt = 0;
		 	 ++currentStep;
			}
		break;
		
		case 17: //Thicc. Line 28
			dB.myText = "All right then, follow me!";
		
		
	     if(keyboard_check_pressed(vk_space)) || (counter == 180) 
			{
			 instance_destroy(o_dialogue_box, true);
		 	 ++currentStep;
			}
		break;
		
		case 18: //Load the tutorial level and destroy the cutscene object
		audio_stop_all();
		
		instance_destroy(o_cutscene_trigger, true);
		instance_destroy(o_cutscene_parent, true);
		room_goto_next();
				
		break;
		
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
counter++;