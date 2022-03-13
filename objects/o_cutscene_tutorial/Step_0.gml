if(currentState == cutSceneStates.Active and global.cut_seen == false) 
{
	switch (currentStep) {
		case 0: 
		global.state = states.player_idle;
	if counter >=60{
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Cutscenes", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_thicc;
				dB.myText = "Don't get poached here, matey! You gotta move FAST on this island!"
				o_thicc.sprite_index = s_thicc_idle;
			if(keyboard_check_pressed(vk_space)) //if player hits space move to next case
			{
				dB.spell_cnt = 0; //resets the variable responsible for spelling out letters in dialouge back to 0
				++currentStep; //move to the next case
			}
	}
	counter++;
		break;
		
		case 1: 
		dB.myText = "When tough and sticky WEBS come by or you gotta get yourself to the FAR shore, DASH to get through!"
		case_switch_120();
		break;
		
		case 2:  
		instance_destroy(o_dialogue_box);
		global.state = states.normal;
		currentState = cutSceneStates.Paused;
		break;
		
	}
}
else if (currentState == cutSceneStates.Paused) {
global.cut_seen = true;
}