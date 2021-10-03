// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function alt_tile_collisions(){
if (tile_place_meeting(x+hsp, y, "Collision"))
{
	while (!tile_place_meeting(x+sign(hsp), y, "Collision"))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (tile_place_meeting(x, y+vsp, "Collision"))
{
	while (!tile_place_meeting(x , y+sign(vsp), "Collision"))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;
}