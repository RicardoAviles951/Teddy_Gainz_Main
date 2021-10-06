function object_collisions(){
//Horizontal Collision
if (place_meeting(x+hsp,y,o_death_zone))
{
	while (!place_meeting(x+sign(hsp),y,o_death_zone))
	{
		x = x + sign(hsp);
	}
	hsp = 0
	room_restart();
	x=192;
	y=256.30;
	image_xscale = 1;
}

//x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,o_death_zone))
{
	while (!place_meeting(x,y+sign(vsp),o_death_zone))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	room_restart();
	x=192;
	y=256.30;
	image_xscale = 1;
}
//y = y + vsp;
}