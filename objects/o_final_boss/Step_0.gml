y = y + sin(timer_boss*.05)*.8;

timer_boss++;
//In the future, this logic will be tied to enemy states.
//Looks in the direction of the player
look = point_direction(x,y, o_player.x, o_player.y);
//Counts down the delay variable by one every frame
firing_delay -= 1;

//Creates an instance of a bullet if the delay counter is less than zero. Sets it to 30. 
if(firing_delay <0) {
	
	firing_delay = 30;
	with(instance_create_layer(x,y,"Bullets", o_acid)) //The with function allows us to reference the o_acid object. 
	{
		speed = 10; //speed of projectile
		direction = other.look; //sets the direction of projectile
		image_angle = direction; //sets the angle to the direction.
	}

}