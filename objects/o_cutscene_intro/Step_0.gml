/// @description Cutscene actions
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //Narration. Line 3
							
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(448, 528,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "One day, an ominous letter arrives to one cozy home on Sunnyside Isle."; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  //if the counter reaches x steps/x seconds or player hits space, destroy objects and move to next case
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
			
		case 1: //Narration. Line 4
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(448, 528,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "The recipient of this letter is our protagonist, Teddy Gainz, who is a good-hearted feathery fellow."; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  //if the counter reaches x steps/x seconds or player hits space, destroy objects and move to next case
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
		
		case 2: //Narration. Line 5
		
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(448, 528,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.myText = "With his proud, swole arms, Teddy takes the letter and begins reading it."; //dialogue that will draw in the dialogue box
								
			if(keyboard_check_pressed(vk_space)) || (counter == 240)  //if the counter reaches x steps/x seconds or player hits space, destroy objects and move to next case
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
		
		case 3: //Letter appears 
		
		if(!instance_exists(o_let
			
	}
}

else if (currentState == cutSceneStates.Paused) {
	
}
