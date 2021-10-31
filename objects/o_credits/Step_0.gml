/// @description Switch statement for credits
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
		if(!instance_exists(o_credits_text))
			dB = instance_create_layer(0, 135, "Instances", o_credits_text);
			dB.myText = "AMBER NICOLE WILLIAMS | Game Artist | @Ambrowskii\nANFER MOLINA | Game Designer/Develope  | @anferm\nCINDY FAN | Art Director/Game Artist | @CindFan | www.cind.ca\nCYNTHIA SULIT | Artist/Producer | @mcjsulit";
						
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
		dB.myText = "DAWN HAMMOND-QUAYE | Level Designer/Developer | @TheArtemis_Moon\nJON PEREZ | Production Consultant | @darthgreebo\nKENNA LINDSAY | Executive Producer | @kenna_lindsay\nLEYLA MAMEDOVA | QA/Playtester | @leylses";
		
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
		dB.myText = "MORGAN ANDERSON | Game Artist/Character Artist | www.morganderson.com\nRICARDO AVILES | Game Designer/Developer/Sound Designer | @ricky_games20\nRIKA WATANABE | Narrative Designer/Game Writer";
		
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
		
		case 3: //Special thanks
		dB.myText = "SPECIAL THANKS";
		
		if(counter = 240) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break; 
		
		case 4:
		dB.myText = "1up Indie\nAhmed Hamad\nAmy Isaac\nAnnie VanderMeer";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		
		case 5: //Special thanks
		dB.myText = "Callum Moscovitch\nChristopher Lockfort\nCircus Center\nColin Johnson";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
				
		case 6: 
		dB.myText = "Computer Science House at RIT\nDallas Lillie\nDanica Pok\nFriendlyCosmonaut";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 7:
		dB.myText = "George and Sara Lindsay\nHaight Ashbury Merchants Association\nHolly\nIGDA Foundation";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 8:
		dB.myText = "Katie Whitcraft\nMika\nMohamed Chamas\nOjo Stephen";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 9:
		dB.myText = "Renee Blair\nRunway Innovation Hub\nRussell Harmon\nSara Toby Moore";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 10:
		dB.myText = "Sean Spaulding\nSela Davis\nSofia Romualdo\nThe Booksmith";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 11:
		dB.myText = "The Clown Conservatory at Circus Center\nNik Pantis\nOscar Barajas\nCorinne Scrivens";
		
		if(counter = 300) || (keyboard_check_pressed(vk_space))
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		
		break;
		
		case 12: 
		
		room_goto(rm_main_menu);
		
		break;
}
}

else if (currentState == cutSceneStates.Paused) {
	
}