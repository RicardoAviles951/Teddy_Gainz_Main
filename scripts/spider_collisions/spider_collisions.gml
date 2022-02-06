// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spider_collisions(){
if (place_meeting(x+hsp, y, o_spiderwall))
{
	while (!place_meeting(x+sign(hsp), y, o_spiderwall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, o_spiderwall))
{
	while (!place_meeting(x, y+sign(vsp), o_spiderwall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;
//left side
if(place_meeting(x-1,y,o_spiderwall)) leftwall = true; 
//right side
if(place_meeting(x+1,y,o_spiderwall)) rightwall = true;
//top side
if(place_meeting(x,y-1,o_spiderwall)) topwall = true; 
//bottom side
if(place_meeting(x,y+1,o_spiderwall)) bottomwall = true;
}