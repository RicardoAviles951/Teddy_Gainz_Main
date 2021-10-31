/// @description Switch statement for credits
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
		if(!instance_exists(o_credits_text))
			dB = instance_create_layer(0, 135, "Instances", o_credits_text);
			dB.myText = "AMBER NICOLE WILLIAMS  |  Game Artist \nANFER MOLINA  |  Game Designer/Developer\nCINDY FAN  |  Game Artist/Key Artist\nCYNTHIA SULIT  |  Artist/Producer";
						
			if(counter = 600) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
								
		break;
		
		case 1: 
		dB.myText = "DAWN HAMMOND-QUAYE  |  Level Designer/Developer\nJON PEREZ  |  Producer/Developer\nKENNA LINDSAY  |  Lead Producer\nLEYLA MAMEDOVA  |  Playtester, Pinch Hitter";
		
		if(counter = 600) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
			
		break;
		
		case 2:
		dB.myText = "MORGAN ANDERSON  |  Game Artist, Character Artist\nOJO STEPHEN  |  Producer\nRICARDO AVILES  |  Game Designer, Developer, Sound Designer\nRIKA WATANABE  |  Narrative and Game Writing";
		
		if(counter = 600) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 3: 
		
		room_goto(rm_main_menu);
		
		break;
}
}

else if (currentState == cutSceneStates.Paused) {
	
}