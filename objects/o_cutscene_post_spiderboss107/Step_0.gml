var spr_h = sprite_get_height(s_arachne);
var spr_w = sprite_get_width(s_arachne);
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
			global.state = states.player_idle;//Sets player state to idle to remove control from player
			o_spider.spider_state = spider_boss.cutscene;
			//Allows for a 1 second delay before starting the dialogue box sequences.
			if counter >=60{
			if(!instance_exists(o_dialogue_box)) //if there is no dialogue box, create a dialogue box
					dB = instance_create_layer(0,0,"Cutscenes", o_dialogue_box); //create the dialogue box and pick its position
					dB.sprite = s_portrait_teddy;
					dB.myText = "Jeez, Mrs.Spider Lady I didn't realize it was that important.";
					dB.box_spr = 1;
					case_switch_120();
			}
				counter++;
		break;
		
		case 1:
			dB.sprite = s_portrait_unk;
			dB.myText = string_upper("Don't you know who I am?!?!?");
			o_spider.sprite_index = s_arachne;
			o_spider.image_speed = 1;
			layer_set_fx("effects",o_effect_ctr.shake_fx)
			Emote_create(o_shocked_question,o_spider,spr_w/2+16,spr_h/2-16);
			case_switch_120();
		break;
		
		case 2:
			instance_destroy(o_shocked_question);
			dB.sprite = s_portrait_teddy;
			dB.myText = "No?...It said 'Arachne and Anansi's Greatest Show on The Web' on the sign.";
			o_spider.image_speed = 0;
			layer_clear_fx("effects");
			case_switch_120();
		break;
		
		case 3:
			o_spider.sprite_index = s_arachne_talk_angry;
			o_spider.image_speed = 1;
			dB.sprite = s_portrait_arachne;
			dB.myText ="I'm Arachne Queen of The Spanish Web, The World Wide Web, and The Dark Web for that matter. And I matter far more than you ever will, Teddy Chicken! Now scram, before I change my mind and scramble you like I did Anansi after I found him with a chorus fly.";
			Emote_create(o_happy_tune,o_spider,-spr_w/2+16,spr_h/2-16);
			o_happy_tune.image_xscale = -1;
			case_switch_120();
		break;
		
		case 4: 
			instance_destroy(o_happy_tune);
			o_spider.image_index = 0;
			o_spider.image_speed = 0;
			dB.sprite = s_portrait_teddy;
			dB.myText = "I'm not leaving without my mother!";
			Emote_create(o_exclamation,o_player,16,-64);
			case_switch_120();
		break;
		
		case 5:
		    instance_destroy(o_exclamation);
			o_spider.sprite_index = s_arachne_talk_happy;
			o_spider.image_speed = 1;
			dB.sprite = s_portrait_arachne;
			dB.myText = "Oh my sweet and sour Chicken Nugget, She's going to get buried in the MAUSOLEUM soon if you don't hurry your tail feathers over there! Tee hee!";
			Emote_create(o_love,o_spider,-spr_w/2+16,spr_h/2-16);
			o_love.image_xscale = -1;
			case_switch_120();	
		break;
		
		case 6://arachne exits the scene
			instance_destroy(o_love);
			if instance_exists(o_dialogue_box) instance_destroy(o_dialogue_box);
			o_spider.sprite_index = s_arachne_crawl_happy;
			o_spider.grappleY -= 4; 
			if alarm[1] == -1 alarm[1] = 120; 
		break;
		
		case 7:
			audio_stop_all();
			room_goto_next();
		break;
		
		
	}
}
else if (currentState == cutSceneStates.Paused) {
}


