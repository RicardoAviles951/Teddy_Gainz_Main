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
					dB.sprite = s_portrait_unk;//Spider 
					dB.myText = "Hello, Teddy... Did you enjoy the carnival?";
					case_switch_120();
			}
				counter++;
		break;
		
		case 1:
			dB.sprite = s_portrait_teddy;
			dB.myText = "Huh? Who are you? And... where is this voice coming from?";
			Emote_create(o_question,o_player,16,-64);
			case_switch_120();
		break;
		
		case 2:
			if instance_exists(o_question) instance_destroy(o_question);
			dB.sprite = s_portrait_unk;//spider
			dB.myText = "Answer my question, my dear. Did you enjoy the carnival?";
			case_switch_120();
		break;
		
		case 3: 
			dB.sprite = s_portrait_teddy;
			dB.myText = "AY- yes, very much.";
			case_switch_120();
		break;
		
		case 4: 
			dB.sprite = s_portrait_unk;//spider
			dB.myText = "Ohoho, that's a pleasure to hear. I felt your footsteps on my web when you walked in, so I was preparing myself for your arrival!";
			case_switch_120();
		break;
		
		case 5: //Arachne revealed
			if instance_exists(o_dialogue_box) instance_destroy(o_dialogue_box);
			o_thicc.sprite_index = s_thicc_jump;  //Thicc jumping out of surprise/fear
			o_spider.sprite_index = s_arachne_crawl_happy //Puts sprite in nuetral position.
			o_spider.image_speed = 1;
			if o_spider.grappleY < -332           // if spider is above a specific point then lower at a speed. 
			{
				number = approach(number,5,.2);   //creates smooth value to lower spider by
				o_spider.grappleY += number;      //This will lower the spider down.
			}
			else                                  //if the spider position is greater than a specific point then slow down to a stop.
			{
				number = approach(number,0,.08);
				o_spider.grappleY += number;
				if number < 1 currentStep +=1;	  //Changes the currentstep value when the spider has slowed down enough.
			}
		
		break;
		
		case 6://new case 6
		o_spider.image_speed = 0;
		if(!instance_exists(o_dialogue_box)) dB = instance_create_layer(0,0,"Cutscenes", o_dialogue_box); 
		o_thicc.sprite_index = s_thicc_idle;     //Thicc regains composure
		o_player.image_xscale = -1;              //turns Teddy towards thicc.
		dB.sprite = s_portrait_teddy;
		dB.myText = "Thiiiiiiicc!!!! I don't like spiders OR clowns, I don't like this at all!";
		case_switch_120();
		break;
		
		case 7:
		dB.sprite = s_portrait_thicc;
		dB.myText = "Take a deep breath friend! You've come so far already. Use the BALLOON to get high then DASH through her performance web like you have done before!";
		case_switch_120();
		break;
		
		case 8: 
			o_spider.sprite_index = s_arachne_talk_happy;
			o_spider.image_speed = 1;
			o_player.image_xscale = 1;           //Turns Teddy back towards the spider.
			if(!instance_exists(o_dialogue_box)) dB = instance_create_layer(0,0,"Cutscenes", o_dialogue_box); 
			dB.sprite = s_portrait_unk;//Spider 
			dB.myText = "I always love it when the audience is...alive, and juicy.";
			Emote_create(o_love,o_spider,-spr_w/2+16,spr_h/2-16);
			if alarm[1] == -1//Alarm that stretches the emote to look more cute.
				{
				o_love.image_xscale =random_range(-1.8,-2);
				o_love.image_yscale =random_range(1.8,2);
				alarm[1] = 15;
			}
			case_switch_120();
		break;
		
		case 9:
			o_spider.sprite_index = s_arachne_idle_happy;
			if instance_exists(o_love) instance_destroy(o_love);
			dB.sprite = s_portrait_teddy;//Spider 
			dB.myText = "Uh oh, I hope you're just talking about the applause.";
			case_switch_120();
		break;
		
		case 10:
			o_spider.sprite_index = s_arachne_talk_angry;
			o_spider.image_speed = 1;
			dB.sprite = s_portrait_unk;//Spider 
			dB.myText = "There'll be no need for applause at the end of this show, Teddy.";
			case_switch_120();
		break;
		
		case 11:
			dB.sprite = s_portrait_unk;//Spider 
			dB.myText = "Because you'll be a bit...tied up, my dear!";
			Emote_create(o_love,o_spider,-spr_w/2+16,spr_h/2-16);
			if alarm[1] == -1//Alarm that stretches the emote to look more cute.
				{
				o_love.image_xscale =random_range(-1.8,-2);
				o_love.image_yscale =random_range(1.8,2);
				alarm[1] = 15;
			}
			case_switch_120();
		break;
		
		case 12:
			if instance_exists(o_love) instance_destroy(o_love);
			dB.sprite = s_portrait_teddy; 
			dB.myText = "Your flirting makes me uncomfortable!!";
			Emote_create(o_cluck,o_player,16,-64);
			case_switch_120();
		break;
		
		case 13:
		audio_stop_all();
		instance_destroy(o_dialogue_box);
		room_goto_next();
		break;
	}
}
else if (currentState == cutSceneStates.Paused) {
}


