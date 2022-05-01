//The animation speed for the sprite strip must be a multiple of 3 to prevent skipping. 
function spider_anim(){
	if ropeAngle < 260//Slightly left of center
	{
		if image_index != 0 // not arms out left, or arms are out right/neutral
		{
			image_speed = -1; //play anim backwards
		}
		else image_speed = 0;//if greater than 260 than stop anim.
	}
	if ropeAngle > 280{ //Slightly right of center 
		if image_index != 2{//not to the right 
			image_speed = 1; //play anim 
		}
		else image_speed = 0;
	}

}