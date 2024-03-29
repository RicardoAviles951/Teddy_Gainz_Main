function balloon_state(){
balloon = instance_place(x,y,o_balloon_up);       //Detects specific instance that player interacts with
with(balloon) state_balloon = st_balloon.grabbed; //Changes state of specific balloon instance

position = animcurve_channel_evaluate(curve,clamp(percent,0,1));//This returns a value from the animation curve.
sprite_index = s_player_balloon;//sets sprite
get_input();             //Script for getting inputs from player
alt_tile_collisions();   //Additional balloon state logic related to collisions is handled in this script.
percent += 1/120;        //The percent variable will determine how long it takes to evaluate the animaiton curve. Resets when going to normal. 
vsp = rise_spd*position; // sets vertical speed to a set value.

image_angle = image_angle + cos(.05*timer)*sign(vsp)*.8;//Math to get the player to swing while in the air.

//Trigger to exit balloon state
if(key_jump){
	
	with(balloon)
		{
			state_balloon = st_balloon.released;//Changes state of specific instance 
		}
	global.state = states.normal;
}
timer++;
if (place_meeting(x+hsp,y,o_death_zone))
{
	while (!place_meeting(x+sign(hsp),y,o_death_zone))
	{
		x = x + sign(hsp);
	}
	global.death_cnt += 1;
	hsp = 0
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}

//Vertical Collision
if (place_meeting(x,y+vsp,o_death_zone))
{
	while (!place_meeting(x,y+sign(vsp),o_death_zone))
	{
		y = y + sign(vsp);
	}
	global.death_cnt += 1;
	vsp = 0;
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}
if (place_meeting(x,y,o_enemy_parent))
{
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}
}
