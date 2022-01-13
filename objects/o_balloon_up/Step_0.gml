//This returns a value from the animation curve.
//The percent variable will determine how long it takes to evaluate the animaiton curve.
position = animcurve_channel_evaluate(curve,clamp(percent,0,1));
//This code will increment the percent variable if the player is in contact with the balloon.
if(active and global.state == states.balloon) 
{
percent += 1/120;
vspd = rise_spd*position; // sets vertical speed to a set value.
o_player.vsp = vspd;
}


//Checks if conditions are met before executing balloon state code.
if(place_meeting(x,y,o_player) and active == false and global.state != states.balloon)
{
	global.state = states.balloon;//Change player state to balloon state.
	image_index  = 3;
	image_speed  = 0;
	o_player.x   = x; //Locks player position to balloon position.
	o_player.y   = y+25;
	hspd         = o_player.hsp;//sets the horizontal speed to players last known horizontal speed.
	active       = true; //Variable to track if the balloon is being "grabbed".
}
y += vspd;
x += hspd;
if(global.state != states.balloon) percent = 0;//Resets percent variable

show_debug_message(active);