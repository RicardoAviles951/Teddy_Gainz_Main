spider_state = spider_boss.swing_1;
enum spider_boss{
	swing_1,
	swing_2,
	swing_3,
	swing_idle,
	cutscene,
	broken
}
//Swinging vars 
swing_spd = -.02
ropeAngleVelocity = 0;
ropeAngle = point_direction(room_width/2,-room_height,x,y);
ropeLength = point_distance(room_width/2,-room_height,x,y);
ropeX = x;
ropeY = y;
grappleX = room_width/2;
grappleY = -room_height;
hsp = 0;
vsp = 0;

//spider baby vars
summoning = false;
summon_time = 0;
summon_max = 4;

last_state = noone;//Stores last state for contextual summons 
baby_count = 0;//Counts how many baby spiders are alive 
shake_time = 60;//Timer for screenshake
hang_height = -1000;//Sets height that spider should not cross.
hang_spd = -2;//Speed at which spider moves up the web during transitions
image_speed = 0;
image_index = 1; 
global.bumped = false;//Detects if first bump occured. 
sound_played = false;
