//This code will increment the percent variable is the player is in contact with the balloon.
if(active) 	percent += 1/120;

//This returns a value from the animation curve.
//The percent variable will determine how long it takes to evaluate the animaiton curve.
position = animcurve_channel_evaluate(curve,clamp(percent,0,1));

//Checks if conditions are met before executing balloon state code.
if(place_meeting(x,y,o_player) and active == false and global.state != states.balloon)
{
	o_player.x   = x; //Locks player position to balloon position.
	o_player.y   = y;
	active       = true; //Variable to track if the balloon is being "grabbed".
	global.state = states.balloon;//Change player state to balloon state.
	vspd         = rise_spd; // sets vertical speed to a set value.
	hspd         = o_player.hsp;//sets the horizontal speed to players last known horizontal speed.
}
if(global.state != states.balloon) percent = 0;//Resets percent variable
curvd_spd = vspd*position	
y += curvd_spd;
x += hspd;
//show_debug_message("Ballon: " + string(vspd*position));