//Animation Curve Variables
curve         = animcurve_get_channel(ac_balloon,"rise");
percent       = 0;

//Balloon movement variables
hspd          = 0;
vspd          = 0;
rise_spd      = -5;

//Balloon swinging variables
swing_force   =  0.8;//higher = stronger swinging from side to side.
swing_spd     = .05;//higher = faster swinging.
timer_balloon = 0;//Variable that gets incremented in the cosine fucntion. Higher number means higher angle of swing.

//Tracking if the balloon has collided with the player.
active        = false;
image_xscale  = choose(-1,1);
image_angle = 0;

collided = false;