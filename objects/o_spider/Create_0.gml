spider_state = spider_boss.swing;
enum spider_boss{
	swing,
	broken
}
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