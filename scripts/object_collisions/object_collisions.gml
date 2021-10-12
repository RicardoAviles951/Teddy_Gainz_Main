function object_collisions(){
if (place_meeting(x+hsp,y,o_weakwall))
{
	//while (!place_meeting(x+sign(hsp),y,o_weakwall))
	//{
	//	x = x + sign(hsp);
	//}
	hsp = 0;
}

//x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,o_weakwall))
{
	while (!place_meeting(x,y+sign(vsp),o_weakwall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
//Horizontal Collision
if (place_meeting(x+hsp,y,o_death_zone))
{
	while (!place_meeting(x+sign(hsp),y,o_death_zone))
	{
		x = x + sign(hsp);
	}
	hsp = 0
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
	global.cam_move_speed = 0;
}

//Vertical Collision
if (place_meeting(x,y+vsp,o_death_zone))
{
	while (!place_meeting(x,y+sign(vsp),o_death_zone))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
	global.cam_move_speed = 0;
}
if (place_meeting(x,y,o_enemy))
{
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
	global.cam_move_speed = 0;
}
if (place_meeting(x,y,o_weakwall))
{
	hsp = 0;
}

//Vertical Collision
if (place_meeting(x,y+vsp,o_weakwall))
{
	vsp = 0;
}

}