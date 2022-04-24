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

last_state = noone;
baby_count = 0;
shake_time = 60;
hang_height = -1000;
hang_spd = -2;
image_speed = 0;
image_index = 0; 

