if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
		global.state = states.player_idle;//Sets player state to idle to remove control from player
		//Allows for a 1 second delay before starting the dialogue box sequences.
		if counter >=60{
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Cutscenes", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_teddy;
				dB.myText = "Oh, this is a carnival! This looks like fun.";
				case_switch_120();
		}
			counter++;
		
		break;
		
		case 1: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "Everything is fun with the right attitude, matey!";
		case_switch_120();
		break;
		
		case 2:
		dB.sprite = s_portrait_thicc;
		dB.myText = "Hmm, it looks like this place requires us to work out our arms and legs more than the beach run. There are higher obstacles.";
		case_switch_120();
		break;
		
		case 3: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "I see some balloons up ahead in the carnival grounds. Use the balloons when you need an extra lift here, matey!"
		case_switch_120();
		break;
		
		case 4:
		dB.sprite = s_portrait_teddy;
		dB.myText = "Good thing I'm scared of only bugs and not heights, then!";
		case_switch_120();
		break;
		
		case 5: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "Haha, you're much more in spirit then you first came to the island!";
		case_switch_120();
		break;
		
		case 6: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "I just hope you're not arachno-claudro-phobic, matey. This carnival is rather well known for...";
		case_switch_120();
		break;
		case 7: 
		dB.sprite = s_portrait_teddy;
		dB.myText = "Having spiders that are clowns?!";
		case_switch_120();
		break;
		case 8: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "That... would actually be quite a sight, huh? Well, you can find that our yourself, matey.";
		case_switch_120();
		break;
		
		case 9: 
		dB.sprite = s_portrait_thicc;
		dB.myText = "Focus on finding your mom, not the giant spider clown invasion!";
		case_switch_120();
		break;
		
		case 10: 
		dB.sprite = s_portrait_teddy;
		dB.myText = "All right, Thicc, thank you for giving me information about this place.";
		case_switch_120();
		break;
		case 11: 
		dB.sprite = s_portrait_teddy;
		dB.myText = "My mom does love cotton candy, she must be around here somewhere.";
		case_switch_120();
		break;
		case 12: 
		dB.sprite = s_portrait_teddy;
		dB.myText = "Let's do this!";
		case_switch_120();
		break;
		case 13: 
		instance_destroy(o_dialogue_box);
		global.state = states.normal;
		room_goto_next();
		break;
		
		
	}
}
else if (currentState == cutSceneStates.Paused) {
global.cut_seen = true;
}