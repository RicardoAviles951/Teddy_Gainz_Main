//state machine for balloon
enum st_balloon{
	idle,
	grabbed,
	released
}
state_balloon = st_balloon.idle;
//Balloon movement variables
vspd          = 0;
//Balloon swinging variables
timer_balloon = 0;
//Sets visual properties 
image_xscale  = -1;
image_angle = 0;
//Var to check if balloon is grabbable 
can_grab = true;
audio_played = false;
