/// @description Switch statement for credits
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: //Create panel for text to be drawn on and add subheading
		if(!instance_exists(o_credits_panel))
			dB = instance_create_layer(20, 183, "Instances", o_credits_panel);
			dB.myText = "ART";
						
			if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
								
		break;
		
		case 1: //Cindy
		dB.myText = "Art Director/Environmental Artist/Character Artist              Cindy Fan";
		
			if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 2://Amber
		dB.myText = "Game Artist        Amber Nicole Williams";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 3://Morgan
		dB.myText = "Game Artist/Character Artist/UI Artist      Morgan Anderson";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 4: //Leyla
		dB.myText = "Pinch Hitter      Leyla Mamedova";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 5: //Cynthia
		dB.myText = "Artist      Cynthia Sulit";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 6: //Design heading
		dB.myText = "DESIGN AND DEVELOPMENT";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 7: //Anfer
		dB.myText = "Game Designer/System Design/Developer      Anfer Molina";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 8://Dawn
		dB.myText = "Level Designer/Developer      Dawn Hammond-Quaye";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
			
		case 9://Ricardo
		dB.myText = "Game Designer/Developer      Ricardo Aviles";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 10://Production heading
		dB.myText = "PRODUCTION";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 11: //Kenna
		dB.myText = "Producer      Kenna Lindsay";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 12: //Jon
		dB.myText = "Producer to Development and Design, Sound      Jon Perez";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 13: //Ojo
		dB.myText = "Producer to Marketing      Ojo Stephen";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 14: //Cynthia
		dB.myText = "Producer to Art      Cynthia Sulit";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 15: //Sound heading
		dB.myText = "SOUND";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 16: //Ricardo, sound
		dB.myText = "Sound Designer      Ricardo Aviles";
		if(counter = 240)
			{
				counter = 0;
				++currentStep;
			}
			
			else
			{
				++counter;
			}
		break;
		
		case 17: //
		
		
		
}
}

else if (currentState == cutSceneStates.Paused) {
	
}