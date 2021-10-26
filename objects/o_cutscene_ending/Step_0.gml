
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) {
		case 0: with(o_cutscene_cam)
		{
			if point_distance(x, y, o_player.x, o_player.y) > 2
				{
					move_towards_point(o_player.x, o_player.y, 2);
				}
			else speed = 0;
		}
		if(o_cutscene_cam.speed == 0) 
				{
					++currentStep; //move to the next case
				}
			else ++counter; //if the counter is not at 180 steps/3 secs, keep counting until it does

		break;
		
		case 1: target = o_player; 
		var center_x = target.x - (sprite_get_width(s_dialogue_box)/2);
		var center_y = target.y - (sprite_get_height(s_dialogue_box)*2);
		if(!instance_exists(o_dialogue_box))
			dB = instance_create_layer(center_x, center_y,"Instances", o_dialogue_box);
			dB.myText = "I... did it?";
		
		
	     if(counter == 180)
			{
			 instance_destroy(o_dialogue_box, true);
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
		
		break;
		
}
}