if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0:
	if counter >=60{
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_thicc;
				dB.myText = "Great job, matey! Now we're at a slower place. Hmm, how should we get you out of here..."
				o_thicc.sprite_index = s_thicc_idle
				
			if(keyboard_check_pressed(vk_space)) //if player hits space move to next case
			{
				dB.spell_cnt = 0; //resets the variable responsible for spelling out letters in dialouge back to 0
				++currentStep; //move to the next case
			}
	}
			counter++;
		break;
		case 1: 
		dB.sprite = s_portrait_teddy;
		dB.myText = "Hold up, what about you? Are you gonna stay here?";
		Emote_create(o_question,o_player,16,-64);
		case_switch_120();
		break;
		case 2:
		if instance_exists(o_question) instance_destroy(o_question);
		dB.sprite = s_portrait_thicc;
		dB.myText = "Nahh, matey. You've been staring at me proud legs all along, but don't forget that I'm a gopher!";
		case_switch_120();
		break;
		case 3:
		dB.myText = "My strength is in diggin 'em holes, so I can get myself out easily.";
		case_switch_120();
		break;
		case 4:
		dB.myText = "But for ya... I'm sorry, matey, but getting ya and your nice, swole arms through me digged holes is gonna be no easy task.";
		case_switch_120();
		break;
		case 5:
		dB.sprite = s_portrait_teddy;
		dB.myText = "Uh oh, does this mean...I need to get through this by myself?";
		Emote_create(o_cluck,o_player,16,-64);
		case_switch_120();
		break;
		case 6:
		if instance_exists(o_cluck) instance_destroy(o_cluck);
		dB.sprite = s_portrait_thicc;
		dB.myText = "Egg-zactly! You already know all the skills to get through this!";
		case_switch_120();
		break;
		case 7:
		dB.sprite = s_portrait_teddy;
		dB.myText = "...Okay, I'll do my best, Thicc! Thank you so much for your help.";
		case_switch_120();
		break;
		case 8:
		dB.sprite = s_portrait_thicc;
		dB.myText = "I'm roosting for ya, matey! See ya on the sunny side!";
		case_switch_120();
		break;
		case 9:
		//audio_stop_all();
		
		instance_destroy(o_cutscene_puzzle, true);
		instance_destroy(o_cutscene_parent, true);
		room_goto_next();
		break;
	}
	
}
else if (currentState == cutSceneStates.Paused) {
}