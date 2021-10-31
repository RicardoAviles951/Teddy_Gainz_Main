if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) 
	{
		case 0:
		#region Teddy starts with Thicc
		
		o_player.image_xscale = -1;
		o_thicc.image_xscale  = -1;
		o_mama.image_index    =  1;
		
		Emote_create(o_exclamation,o_player,-32,-64);
		o_exclamation.image_xscale = -1;
		
		target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "Teddy: Thicc! I was looking for you.";
		case_switch_120();
		
		break;
		#endregion
		
		case 1:
		#region Mayonnaise 
		if(!audio_is_playing(snd_musicbox))
		{
			audio_play_sound(snd_musicbox, 2, true);
			audio_sound_gain(snd_musicbox,.4, 5000);
		}
		instance_destroy(o_exclamation, true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Oh, matey! Sorry 'bout that, I was just lost in my mayonnaise, thinkin' bout some stuff.";
		case_switch_120();
		break;
		#endregion
		
		case 2:
		#region Teddy speaks.
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: No need to apologize, Thicc. I just wanted to talk to you, and Mum also wanted to see you too!";
		case_switch_120();
		break;
		#endregion
		
		case 3:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Hahah, look at you now. You are a real good kid, eh?";
		case_switch_120();
		
		break;
		
		case 4:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: ...Ya know, matey... I was actually thinking about you.";
		case_switch_120();
		break;
		
		case 5:
		Emote_create(o_question,o_thicc,8,-64)
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Me?";
		case_switch_120();
		break;
		
		case 6:
		instance_destroy(o_question, true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: That's right! I'm talking about you, Teddy Gainz!";
			case_switch_120();
		
		break;
		
		case 7:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: You see, Teddy... The reason why I was able to guide you when you arrived on the beach was because I've been doing all of this for a long time.";
		case_switch_120();
		break;
		
		case 8:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: I was placed on this island as a part of a mission.";
		case_switch_120();
		break;
		
		case 9:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Yup, that's right. Just think of me as a spy that came to this island to investigate why those bugs were behaving like monsters.";
		case_switch_120();
		break;
		
		case 10:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: My disguise was a surfer roamin' around on Buzzy Buggy Beach, but in reality, that was just an undercover.";
			case_switch_120();
		break;
		
		case 11:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: I explored the island every day while fightin' or runnin' from them bugs, and I learned them tricks on navigating this island.";
			case_switch_120();
		break; 
		case 12:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: So that's why you were so skilled with the dashes and everything...";
			case_switch_120();
		break;
		
		
		case 13:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Egg-zactly. And I was determined to keep on doing this until I found the core of the issue.";
			case_switch_120();
		
		break;
		
		case 14:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: But here's the thing- I didn't have anyone special like you. I was all alone.";
			case_switch_120();
		break;
		
		case 15: 
		Emote_create(o_dumbfounded ,o_thicc,8,-64)
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: No friends, no family... It was tough to get through it all without something to hold onto like that, to be honest.";
			case_switch_120();
		break;
		
		case 16:
		instance_destroy(o_dumbfounded, true);
		Emote_create(o_exclamation ,o_thicc,8,-64)
		if(instance_exists(o_dialogue_box))
			dB.myText ="Thicc: So, it really struck me hard when you came along and said that you came to save your Mum- all when you were ABSOLUTELY terrified of EVERYTHING!";
		 case_switch_120();
		break;
		
		case 17: 
		instance_destroy(o_exclamation, true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: I was worried about you, kid. But you managed to go all the way, utilize the power of them ghosties..."
			case_switch_120();
		
		case 18:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: And the moment when I saw you make that selfless decision to follow their words, even when that ol' mausoleum looked like it was gonna collapse...";
			case_switch_120();
		break;
		
		case 19: 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: I really, really, felt it. That you've grown so much from the time you arrived on the island.";
			case_switch_120();
		break;
		
		case 20:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: That's what I was pondering 'bout. Someone I'd like to call a friend, and they're a courageous one who loves their Mum with all their big heart.";
			case_switch_120();
		break;
		
		case 21: 
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: And... it's gonna be quite sad when you go back to your island.";
			case_switch_120();
		break; 
		
		case 22:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Thicc...";
			case_switch_120();
		break;
		
		case 23:
		Emote_create(o_exclamation ,o_thicc,8,-64)
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Well, that's it! No more with the sappy stories. Sorry to bring your mood down when we're supposed to be enjoying this festival.";
			case_switch_120();
		break;
		
		case 24:
		instance_destroy(o_exclamation, true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Now we can go back together and see your Mum too-";
			case_switch_120();
		
		break;
		
		case 25:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: No, Thicc. Please don't apologize.";
			case_switch_120();
		break;
		
		case 26:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: If anything, I really appreciate you opening up to me. I'm sure that it was very hard for you.";
			case_switch_120();
		break;
		
		case 27:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: I... come from a place where I can't say that I fully understand how you feel because I do have Mum.";
			case_switch_120();
		break;
		
		case 28:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: However, losing that support, having no one and being unsure if you're doing the right thing... That's how I felt when I brought myself to the island.";
			case_switch_120();
		break;
		
		case 29:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: And that was also when I met you.";
			case_switch_120();
		break;
		
		case 30:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: You heard me out that I'm actually scared of bugs, and you still had faith in me after I made that confession...";
			case_switch_120();
		break;
		
		case 31:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: I was able to face my fears on this island knowing that I have been given the skills needed to overcome those challenges. And really, it's all thanks to you.";
			case_switch_120();
		break;
		
		case 32:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: This journey was an unexpected one. Me, the bugs, and you, who's a gopher... all different species, becoming friends in the end.";
			case_switch_120();
		break;
		
		case 33:
		Emote_create(o_happy_tune,o_player, -32,-64);
		o_happy_tune.image_xscale = -1;
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: And I'm so glad I was able to meet you, Thicc. If you were a chicken, you sure would be an im-peck-able one!";
			case_switch_120();
		break;
		
		case 34:
		instance_destroy(o_happy_tune, true);
		Emote_create(o_love,o_thicc, 8,-64);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Aw, Teddy...";
			case_switch_120();
		break;
		
		case 35:
		instance_destroy(o_love, true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: ...Pal, you're really gonna get me cryin' real tears here!";
			case_switch_120();
		break;
		
		case 36:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Ahaha, sorry. Now I'm the one who's making this really sappy, eh?";
			case_switch_120();
		break;
		
		case 37:
		audio_stop_sound(snd_musicbox);
		if(!audio_is_playing(snd_intro_friendly))
		{
			audio_play_sound(snd_intro_friendly, 2, true);
		}
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: But if you're sad about leaving us, how about you come visit us in Sunnyside Isle?";
			case_switch_120();
		break;
		
		case 38:
		Emote_create(o_happy_tune,o_player, -32,-64);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: I'd love to have you over and chat over Mum's curry chickpea-loaded baked potatoes together. She makes them reaaaaal good!";
			case_switch_120();
		break;
		
		case 39:
		instance_destroy(o_happy_tune,true);
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: Hoh, you already got me there at curry!";
			case_switch_120();
		break;
		
		case 40:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: Hehe, I love the enthusiasm. Do you wanna make this a race to see who gets to Mum first?";
			case_switch_120();
		break;
		
		case 41:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Thicc: You're on, Teddy! Those leg days were all for this day!";
			case_switch_120();
			
		case 42:
		if(instance_exists(o_dialogue_box))
			dB.myText = "Teddy: All right, then... let's... do this!";
			case_switch_120();
		
		
		case 43:
		audio_stop_all()
		instance_destroy(o_cutscene_ending2, true);
		break;
	}
}
else if (currentState == cutSceneStates.Paused) {
	
}