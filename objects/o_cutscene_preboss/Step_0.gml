if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0:
		if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
		dB = instance_create_layer(0,0,"Instances", o_dialogue_box);
		dB.sprite = s_portrait_teddy;
		dB.myText = "That... was a long path...";
		case_switch_120();
		break;
		case 1:
		dB.myText = "Hey, wait... Are those the crystals the ghosts were talking about?";
		case_switch_120();
		break;
		case 2:
		dB.sprite = s_portrait_mama;
		dB.myText = "Teddy... Teddy, is that you?!";
		case_switch_120();
		break;
		case 3:
		dB.sprite = s_portrait_teddy;
		dB.myText = "Mum?! Where are you, Mum?!";
		Emote_create(o_shocked_question,o_player,16,-64);
		if(keyboard_check_pressed(vk_space))
			{
		 	 ++currentStep;
			}
		break;
		case 4:
		if instance_exists(o_shocked_question) instance_destroy(o_shocked_question);
		if !instance_exists(o_final_boss) instance_create_layer(room_width/2,room_height/2,"Enemy",o_final_boss);
		global.boss_state = boss.idle;
		o_final_boss.image_alpha = 0;
		o_final_boss.image_alpha = timer/room_speed;
		timer++;
		show_debug_message("BOSS IS HERE");
		case_switch_120();
		break;
		case 5:
		Emote_create(o_double_exclamation,o_player,16,-64);
		global.boss_state = boss.idle;
		dB.myText = "Mum... I first need to face my fears before getting to face you!";
		
		case_switch_120();
		break;
		case 6:
		audio_stop_all();
		instance_destroy(o_cutscene_preboss, true);
		instance_destroy(o_cutscene_parent, true);
		room_goto_next();
		break;
	}
}
else if (currentState == cutSceneStates.Paused){
	
}