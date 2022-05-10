/// @description Switch statement for credits
// You can write your code in this editor

if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: 
		if(!instance_exists(o_credits_text))
			dB = instance_create_layer(0, 135, "Instances", o_credits_text);
			dB.myText = "AMBER NICOLE WILLIAMS | Game Artist | @Ambrowskii\nANFER MOLINA | Game Designer/Developer  | @anferm\nCINDY FAN | Art Director/Game Artist | @CindFan | www.cind.ca\nCYNTHIA SULIT | Artist/Producer | @mcjsulit";
			case_switch_120();
								
		break;
		
		case 1: 
		dB.myText = "DAWN HAMMOND-QUAYE | Level Designer/Developer | @TheArtemis_Moon\nJON PEREZ | Production Consultant | @darthgreebo\nKENNA LINDSAY | Executive Producer | @kenna_lindsay\nLEYLA MAMEDOVA | QA/Playtester | @leylses";
		case_switch_120();
		break;
		
		case 2:
		dB.myText = "MORGAN ANDERSON | Game Artist/Character Artist | www.morganderson.com\nRICARDO AVILES | Game Designer/Developer/Sound Designer | @ricky_games20\nRIKA WATANABE | Narrative Designer/Game Writer";
		case_switch_120();
		break;
		
		case 3: 
			dB.myText ="Sound Attributions";
			case_switch_120();
		break;
		case 4:
			dB.myText ="Option Click UI Click by EminYILDIRIM of Freesound.org\n'Justa Slap Smack' by RocketPancake of Freesound.org\nRika Watanabe - Breaking Wall Sound\nRika Watanabe - Balloon Rise Sound";
			case_switch_120();
		break;
		
		case 5:
		dB.myText = "Ambient Beach Sounds 'Ambience, Seaside Waves, Close, A' by InspectorJ(www.jshaw.co.uk) of Freesound.org\nLevel 1 Music 'Ghost Surf Rock' Loyalty Freak Music of Freemusicarchive.org\nLevel 2 Music 'Mechanical Street Organ - The Hague' by RTB45 of Freesound.org\nAmbient Graveyard Music 'Halloween Graveyard at night howling wind'\nby Mistersherlock of Freesound.org";
		case_switch_120();
		break;
		
		case 6:
			dB.myText = "Graveyard Cutscene Music Ricardo Aviles - Original Composition\nLevel 3 Music Ricardo Aviles - Original Composition\nAmbient Final Boss Music Dark Ambience - Abandoned Fields by Dredile of freesounds.org\nCredits Music 'Making Up (soft Hip Hop)' Shortiefoeva2 of Freesound.org ";
			case_switch_120();	
	break;
		
		case 7:
			dB.myText = "Visual Attributions\nLevel 2 Tileset Hero's Journey - Wood Camp by Anokolisa of itch.io";
			case_switch_120();
		break;
		
		case 8: //Special thanks
		dB.myText = "SPECIAL THANKS";
		case_switch_120();
		break; 
		
		case 9:
		dB.myText = "1up Indie\nAhmed Hamad\nAmy Isaac\nAnnie VanderMeer\nAlisha Dacus";
		case_switch_120();
			break;
		
		
		case 10: //Special thanks
		dB.myText = "Callum Moscovitch\nChristopher Lockfort\nCircus Center\nColin Johnson";
		case_switch_120();
		break;
		case 11: 
		dB.myText = "Computer Science House at RIT\nDallas Lillie\nDanica Pok\nFriendlyCosmonaut";
		case_switch_120();
		
		break;
		
		case 12:
		dB.myText = "George and Sara Lindsay\nHaight Ashbury Merchants Association\nHolly\nIGDA Foundation";
		case_switch_120();
		break;
		
		case 13:
		dB.myText = "Katie Whitcraft\nMika\nMohamed Chamas\nOjo Stephen";
		case_switch_120();
		break;
		
		case 14:
		dB.myText = "Renee Blair\nRunway Innovation Hub\nRussell Harmon\nSara Toby Moore";
		case_switch_120();
		break;
		
		case 15:
		dB.myText = "Sean Spaulding\nSela Davis\nSofia Romualdo\nThe Booksmith";
		case_switch_120();
		break;
		
		case 16:
		dB.myText = "The Clown Conservatory at Circus Center\nNik Pantis\nOscar Barajas\nCorinne Scrivens";
		case_switch_120();
		break;
		
		case 17: 
		audio_stop_all();
		
		room_goto(rm_main_menu);
		
		break;
}
}

else if (currentState == cutSceneStates.Paused) {
}
