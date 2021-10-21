/// @description Cutscene actions
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //play background music,  create dialogue box above Teddy
		
			audio_is_playing(bgMusic) //play background music
			
					
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(288, 384,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "Oh my, it's so hot and humid here. I'm not sure if my feathers will dry out well."; //dialogue that will draw in the dialogue box
		
			if(!instance_exists(o_exclamation)) //if there is no emote, create an emote
				instance_create_layer(o_player.x, o_player.y - 75, "Instances", o_exclamation);//create and emote and pick its position
		
			if(counter == 180) //if the counter reaches 180 steps/3 seconds, destroy objects and move to next case
			{
				instance_destroy(o_dialogue_box, true); //destroy the dialogue box
				instance_destroy(o_exclamation); //destroy the emote
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
		
			
			break;
		
		
		case 1: //Teddy's second line of dialogue
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384,"Instances", o_dialogue_box);
			dB.myText = "Plus...This already seems like a place with a lot of bugs.";
		
		
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
		
		case 2: //player choice, swim home or stay on the island
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384,"Instances", o_dialogue_box);
			dB.myText = "Would you like to swim back home? Y or N";
		
		
	     if(keyboard_check(ord("Y")))
			{
			 game_end();
			}
		
		 if(keyboard_check(ord("N")))
			{
			 instance_destroy(o_dialogue_box, true);
			 ++currentStep;
			}
		
		break;
		
		case 3: //Thicc dialogue 1
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384, "Instances", o_dialogue_box);
			dB.myText = "Aye, matey! You look a bit lost there. Care if I show you around?";
			o_thicc.sprite_index = s_thicc_jump
		
		if(counter == 120)
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
		
		case 4: //Teddy. Line 14
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384, "Instances", o_dialogue_box);
			dB.myText = "S-sure."
				
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
		
		case 5:// Teddy. Line 15
			
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384, "Instances", o_dialogue_box);
			dB.myText = "(A gopher...with legs?!)"
		
		if(!instance_exists(o_shocked_question))
			instance_create_layer(o_player.x - 20, o_player.y - 75, "Instances", o_shocked_question);
		
		if(counter == 120)
			{
			 instance_destroy(o_dialogue_box, true);
			 instance_destroy(o_shocked_question);
		 	 ++currentStep;
			}
		
		else
			{
			++counter;
			}
			
			break;
			
		case 6: //Thicc. Line 16
		
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(288, 384, "Instances", o_dialogue_box);
			dB.myText = "Hahah, even more confused, eh? My name is Thicc Legs, and I'm a proud gopher living on this island.";
			
		if(counter == 120)
			{
			 instance_destroy(o_dialogue_box, true);
			 ++currentStep;
			}
			
			else
			
			{
			++counter;
			}
			
			break;
			
		case 7: // Bug appears on screen 
		
		if(!instance_exists(o_enemy)) //if the bug doesn't exist
		{
			instance_create_layer(-352, 160, "Enemies", o_enemy); //create the bug object outside of the viewport
 		}
		
		if(o_enemy.x != -160) //if the enemy isn't in starting position
		{
			++o_enemy.x; //move the enemy along the x asis	
		}
		
			
		break;
		
		case 8: //Teddy and Thicc run right into the level warp to start the tutorial level
		
		o_player.sprite_index = s_player_run;
			if(o_player.x != 608)
			{
				++o_player.x;
				o_player.image_speed = 1;
			}
			
			else
			
			{
				o_player.image_speed = 0;
			}
			
			o_thicc.sprite_index = s_thicc_run;
			if(o_thicc.x != 608)
			{
				++o_thicc.x;
				o_thicc.image_speed = 1;
			}
			
			else
			
			{
				o_thicc.image_speed = 0;
			}
			
			break;
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
