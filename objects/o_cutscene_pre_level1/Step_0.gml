if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0:
		global.state = states.player_idle;
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_thicc;
				dB.myText = "Well done, matey!";
				case_switch_120();
		break;
		case 1:
		dB.sprite = s_portrait_teddy;
		dB.myText = "Thanks for showing me the ropes!"
		case_switch_120();
		break;
		case 2:
		dB.sprite = s_portrait_thicc;
		dB.myText = "My pleasure, matey! It's the only way--"
		if alarm[0] = -1 alarm[0] = 90;
		break;
		case 3:
		instance_destroy(o_dialogue_box); 
		Emote_create(o_cluck,o_player,16,-64);
		o_small_bug_solo.cut_move = true;
		if alarm[0] = -1 alarm[0] = 60;
		break;
		case 4:
		Emote_create(o_double_exclamation,o_thicc,0,-64)
		with(o_double_exclamation){
			image_xscale =-1;
		}
		o_small_bug_trio.cut_move = true;
		if alarm[0] = -1 alarm[0] = 60;
		break;
		case 5:
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
				dB = instance_create_layer(0,0,"Instances", o_dialogue_box); //create the dialogue box and pick its position
				dB.sprite = s_portrait_thicc;
				dB.myText = "RUUUNN!";
		layer_set_fx("effects",o_effect_ctr.shake_fx)
		if alarm[0] = -1 alarm[0] = 120;
		break;
		case 6:
		instance_destroy(o_double_exclamation);
		instance_destroy(o_dialogue_box);
		with(o_thicc){
			sprite_index = s_thicc_run
			image_xscale = -1;
			x+=5;
		}
		if alarm[0] = -1 alarm[0] = 60;
		break;
		case 7:
		
		instance_destroy(o_cutscene_pre_level1, true);
		instance_destroy(o_cutscene_parent, true);
		room_goto_next();
		break;
	}
}
else if (currentState == cutSceneStates.Paused) {
}