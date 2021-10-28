/// @description Cutscene actions
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //Narration. Line 3
							
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(157,133,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "One day, an ominous letter arrives to one cozy home on Sunnyside Isle."; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  //if the counter reaches x steps/x seconds or player hits space, destroy objects and move to next case
			{
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
			
			break;
			
		case 1: //Narration. Line 4
		
		if(instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB.myText = "The recipient of this letter is our protagonist, Teddy Gainz, who is a good-hearted feathery fellow."; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  //if the counter reaches x steps/x seconds or player hits space, destroy objects and move to next case
			{
				counter = 0; //reset the timer to 0 steps/0 seconds
				++currentStep; //move to the next case
			}
			
			else
			{
				++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does
			}
		
			
			break;
		
		case 2: //Narration. Line 5
		
		if(instance_exists(o_dialogue_box)) 
				dB.myText = "With his proud, swole arms, Teddy takes the letter and begins reading it."; 
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  
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
		
		case 3: //Letter appears 
		
		if(!instance_exists(o_letter))
			instance_create_layer(128,-32,"Instances",o_letter);
			dB = o_letter;
			dB.myText = "Dear Teddy Gainz, We are bugs from your neighboring island. This is an invitation from us to you, to join us for our Reaper Festival.";
			
		if(keyboard_check_pressed(vk_space)) || (counter == 360)  
			{
				counter = 0; 
				++currentStep; 
			}
			
			else
			{
				++counter; 
			}	
			
			break;
			
		case 4: //Letter pt2
		
		if(instance_exists(o_letter))
			dB.myText = "This is a ceremony very important for our tribe, and we would like you take part in it as a special guest.";
			
			if(keyboard_check_pressed(vk_space)) || (counter == 360)  
			{
				counter = 0; 
				++currentStep; 
			}
			
			else
			{
				++counter; 
			}	
			
			break;
			
			case 5: //Letter pt3
		
		if(instance_exists(o_letter))
			dB.myText = "Your mother has also been invited and escorted in advance - as chickens serve as a great source of protein!";
			
			if(keyboard_check_pressed(vk_space)) || (counter == 360)  
			{
				counter = 0; 
				++currentStep; 
			}
			
			else
			{
				++counter; 
			}	
			
			break;
			
			case 6: //Letter pt4. Destroy letter and clear dialogue box
		
		if(instance_exists(o_letter))
			dB.myText = "We are looking forward for your arrival. See you soon at the night of the feast -  as our GUEST!";
			
			if(keyboard_check_pressed(vk_space)) || (counter == 360)  
			{
				instance_destroy(o_letter);
				counter = 0; 
				++currentStep; 
			}
			
			else
			{
				++counter; 
			}	
			
			break;
			
			case 7: //Show the map
			
			if(!instance_exists(o_map))
				instance_create_layer(128,39,"Instances",o_map)
				
				
			if(keyboard_check_pressed(vk_space)) || (counter == 360)  
				{
				instance_destroy(o_map);
				counter = 0; 
				++currentStep; 
				}
			
			else
			{
				++counter; 
			}	
			
			break;
			
			case 8: //Narrator. Line 10
			
			if(!instance_exists(o_dialogue_box))
				if(!instance_exists(o_dialogue_box)) 
				dB = instance_create_layer(157,133,"Instances", o_dialogue_box); 
				dB.myText = "Upon reading this letter, Teddy was absolutely horrified.";
				
			if(keyboard_check_pressed(vk_space)) || (counter == 240) 
				{
				counter = 0; 
				++currentStep;
				}
			
			else
				{
				++counter; 
				}
				
			break;
			
			
			case 9: //Narrator. Line 11
			
			if(instance_exists(o_dialogue_box))
				dB.myText = "It was not just the fact that the bugs mentioned about his mother being a good source of protein, when his mother is actually not even a chicken.";
				
			if(keyboard_check_pressed(vk_space)) || (counter == 360) 
				{
				counter = 0; 
				++currentStep;
				}
			
			else
				{
				++counter; 
				}
			
			
			break;
			
			case 10: // Narrator. Line 12
			
			if(instance_exists(o_dialogue_box))
				dB.myText = "Teddy was faced by his biggest fear.";
				
			if(keyboard_check_pressed(vk_space)) || (counter == 360) 
				{
				counter = 0; 
				++currentStep;
				}
			
			else
				{
				++counter; 
				}
			
			break;
			
			case 11: // Narrator. Line 13
			
			if(instance_exists(o_dialogue_box))
				dB.myText = "But knowing that this loving mother has been taken away, he had to muster up his courage.";
				
			if(keyboard_check_pressed(vk_space)) || (counter == 360) 
				{
				counter = 0; 
				++currentStep;
				}
			
			else
				{
				++counter; 
				}
				
			case 12: // Narrator. Line 14
			
			if(instance_exists(o_dialogue_box))
				dB.myText = "And so, Teddy has accepted this invitation and embarked on his journey called…";
				
			if(keyboard_check_pressed(vk_space)) || (counter == 360) 
				{
				counter = 0; 
				++currentStep;
				}
			
			else
				{
				++counter; 
				}
				
			case 13: // Load the next room
			
			room_goto_next();
			
			break;				
		
			
}
}

else if (currentState == cutSceneStates.Paused) {
	
}