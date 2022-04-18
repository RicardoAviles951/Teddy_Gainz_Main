//This returns a value from the animation curve.
//The percent variable will determine how long it takes to evaluate the animaiton curve.
position = animcurve_channel_evaluate(curve,clamp(percent,0,1));
//This code will increment the percent variable if the player is in contact with the balloon.
if(active and global.state == states.balloon) 
{
collided = true;
image_angle = image_angle + cos(swing_spd*timer_balloon)*sign(vspd)*swing_force;//calculates swing effect.
o_player.image_angle = image_angle;
percent     += 1/120;
vspd         = rise_spd*position; // sets vertical speed to a set value.
o_player.vsp = vspd;//sets player vertical speed to equal balloon vertical speed.
part_particles_create(o_particle_ctr.part_sys_balloon ,x,y,o_particle_ctr.particle_type_balloon,1);
}
else{
image_angle = 0;
o_sound_ctr.audio_on = false;
}



//Checks if conditions are met before executing balloon state code.
if(place_meeting(x,y,o_player) and active == false and global.state != states.balloon)
{
	if(o_player.hsp >7) o_player.hsp = 7;
	global.state = states.balloon;//Change player state to balloon state.
	image_index  = 3;//sets balloon sprite index to frame with straight string
	image_speed  = 0;//sets animation framerate to 0;
	o_player.x   = x; //Locks player position to balloon position.
	o_player.y   = y;//Locks player position to balloon position.
	hspd         = o_player.hsp;//sets the horizontal speed to players last known horizontal speed.
	active       = true; //Variable to track if the balloon is being "grabbed".
}



y += vspd;
x += hspd;
//Creates floating affect
if(!active)
{
	y = y + sin(.05*timer_balloon)*.8;
}
if(global.state != states.balloon) percent = 0;//Resets percent variable
timer_balloon++;
//show_debug_message(active);
//show_debug_message("Balloon angle: "+ string(image_angle));