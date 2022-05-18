/// @description Cutscene actions
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //Narration. Line 3
							
			if(!instance_exists(o_textbox)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(157,133,"Instances", o_textbox); //create the dialogue box and pick its position
				dB.myText = "One day, an ominous letter arrives to one cozy home on Sunnyside Isle."; //dialogue that will draw in the dialogue box
				case_switch_120();
			break;
			
		case 1: //Narration. Line 4
		
		if(instance_exists(o_textbox)) //if there is no dialogue box, create a dialogue box
				dB.myText = "The recipient of this letter is our protagonist, Teddy Gainz, who is a good-hearted feathery fellow."; //dialogue that will draw in the dialogue box
			case_switch_120();
			break;
		
		case 2: //Narration. Line 5
		
		if(instance_exists(o_textbox)) 
				dB.myText = "With his proud, swole arms, Teddy takes the letter and begins reading it."; 
								
			if(keyboard_check_pressed(vk_space)) 
			{
				dB.spell_count = 0;
				instance_destroy(o_textbox);
				++currentStep; 
			}
			break;
		
		case 3: //Letter appears 
		
		if(!instance_exists(o_letter))
			instance_create_layer(128,-32,"Instances",o_letter);
			dB = o_letter;
			dB.myText = "Dear Teddy Gainz, We are bugs from your neighboring island. This is an invitation from us to you, to join us for our Reaper Festival.";
		case_switch_120();	
	
			break;
			
		case 4: //Letter pt2
		
		if(instance_exists(o_letter))
			dB.myText = "This is a very important ceremony for our tribe, and we would like you to take part in it as a special guest.";
			case_switch_120();	
			
			break;
			
			case 5: //Letter pt3
		
		if(instance_exists(o_letter))
			dB.myText = "Your mother has also been invited and escorted in advance - as chickens serve as a great source of protein!";
			case_switch_120();
			break;
			
			case 6: //Letter pt4. Destroy letter and clear dialogue box
		
		if(instance_exists(o_letter))
			dB.myText = "We are looking forward for your arrival. See you soon at the night of the feast -  as our GUEST!";
			
			if(keyboard_check_pressed(vk_space)) 
			{
				instance_destroy(o_letter);
				++currentStep; 
			}	
			
			break;
			
			case 7: //Show the map
			
			if(!instance_exists(o_map))
				instance_create_layer(128,39,"Instances",o_map)
				
				
			if(keyboard_check_pressed(vk_space))
				{
				instance_destroy(o_map); 
				++currentStep; 
				}	
			
			break;
			
			case 8: //Narrator. Line 10
			
			if(!instance_exists(o_textbox))
				dB = instance_create_layer(157,133,"Instances", o_textbox); 
				dB.myText = "Upon reading this letter, Teddy was absolutely horrified.";
				case_switch_120();
				
			break;
			
			
			case 9: //Narrator. Line 11
				dB.myText = "It was not just the fact that the bugs mentioned about his mother being a good source of protein, when his mother is actually not even a chicken.";
				case_switch_120();
			break;
			
			case 10: // Narrator. Line 12
			dB.myText = "Teddy was faced by his biggest fear.";
			case_switch_120();
			
			break;
			
			case 11: // Narrator. Line 13
			dB.myText = "But knowing that this loving mother has been taken away, he had to muster up his courage.";
			case_switch_120();
				
			case 12: // Narrator. Line 14
			dB.myText = "And so, Teddy has accepted this invitation and embarked on his journey called…";
			case_switch_120();
			case 13: // Load the next room
			audio_stop_all();
			
			room_goto_next();
			
			break;				
		
			
}
}

else if (currentState == cutSceneStates.Paused) {
	
}