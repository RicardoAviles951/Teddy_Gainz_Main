/// @description Cutscene actions
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //play background music,  create dialogue box above Thicc
		
			audio_is_playing(bgMusic) //play background music
			
					
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(160, 416,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Thicc: Aye, matey! You look a bit lost there. Care if I show you around?"; //dialogue that will draw in the dialogue box
				o_thicc.sprite_index = s_thicc_jump
				
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				o_thicc.sprite_index = s_thicc_idle;
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
		
			
			break;
		
		
		case 1: //Teddy. Line 14
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: S- sure.";
		
		
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
		
		case 2: //Teddy. Line 15
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: (A gopher... with legs?!)";
			
		if(!instance_exists(o_double_exclamation))
			instance_create_layer(320,512,"Instances",o_double_exclamation)
		
			     if(counter == 180)
			{
			 instance_destroy(o_dialogue_box, true);
			 instance_destroy(o_double_exclamation);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		
		break;
		
		case 3: //Thicc. Line 16
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: Hahah, even more confused, eh? My name is Thicc Legs, and I'm a proud gopher living on this island.";
			o_thicc.sprite_index = s_thicc_jump
		
		if(counter == 300)
			{
			 instance_destroy(o_dialogue_box, true);
			 o_thicc.sprite_index = s_thicc_idle;
			 counter = 0;
			 ++currentStep;
			}
			
		else
			{
			++counter;
			}
				
		break;
		
		case 4: //Thicc. Line 17
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416, "Instances", o_dialogue_box);
			dB.myText = "Thicc: Well, not a native, though. I'm the only gopher here, so it's been a bit lonely spending my time like that. So it's nice meeting ya, matey!"
				
		 if(counter == 300)
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
		
		case 5:// Teddy. Line 18
			
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416, "Instances", o_dialogue_box);
			dB.myText = "Teddy: Nice to meet you, Thicc. My name is Teddy Gainz."
		
		
		
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
			
		case 6: //Teddy. Line 19 pt1
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416, "Instances", o_dialogue_box);
			dB.myText = "Teddy: The bugs invited me to their festival, but they kidnapped my Mum and friends as a preparation for their festivity. I'm here to save them.";
			
		if(counter == 300)
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
			
		case 7: //Teddy. Line 19 pt2
			
			if(!instance_exists(o_dialogue_box))
			{
				dB = instance_create_layer(160,416, "Instances", o_dialogue_box);
				dB.myText = "Teddy: I'm here to save them"
			}
			
			if(counter == 300)
			{
				instance_destroy(o_dialogue_box);
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
						
			break;
			
			case 8:// Thicc. Line 20
			
			if(!instance_exists(o_dialogue_box))
		{
			dB = instance_create_layer(160,416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: Aye, you're going against them BUGS! You're a real courageous one, matey."
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
			
			case 9: //Teddy. Line 21
			
			if(!instance_exists(o_dialogue_box))
		{
			dB = instance_create_layer(160,416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: N- no, not really... I'm a bit ashamed to say this, but..."
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
			
			case 10: //Thicc. Line 22
			
		if(!instance_exists(o_dialogue_box))
		{
			dB = instance_create_layer(160,416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: I'm actually terrified of bugs. Tremendously."
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
			
			case 11: //Thicc. Line 23
			
			if(!instance_exists(o_dialogue_box))
		{
			dB = instance_create_layer(160,416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: Nahh, matey. Don't be so harsh on yourself. I really admire your courage to come here all by yourself, especially when you're scared of them bugs!"
		}
			
			if(counter == 300)
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
			
			case 12://Thicc. Line 24
			
			
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: Never forget your loyalty to your family and friends, matey.";
		
		
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
		
		case 13: //Thicc. Line 24 pt2
		
			if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: As a loner on this island... that's something I can't value anymore, even if I want to.";
		
		
	     if(counter == 300)
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
		
		case 14: //Teddy. Line 25
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: Thicc... That's very kind of you. Thank you so much for your words.";
		
		
	     if(counter == 240)
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

		case 15: //Teddy. Line 26
		
			if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Teddy: I actually feel so much better now that I got to talk to you. Would you be kind enough to guide me onto this island?";
		
		
	     if(counter == 300)
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
		
		case 16: //Thicc. Line 27
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: It's a pleasure, matey! The key to survivin' and thrivin' on this island is to RUN and RUN from them bugs.";
		
		
	     if(counter == 300)
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
		
		case 17: //Thicc. Line 28
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(160, 416,"Instances", o_dialogue_box);
			dB.myText = "Thicc: All right then, follow me!";
		
		
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
		
		case 18: //Load the tutorial level
		
		room_goto_next();
		
		break;
		
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
