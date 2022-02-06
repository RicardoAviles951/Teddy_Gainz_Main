// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_check(){	
//CHECKS 1 PIXEL TO THE LEFT OR RIGHT 
if(place_meeting(x-1,y,o_spiderwall) or place_meeting(x+1,y,o_spiderwall))
{
Hwall_collided = true;
}
else Hwall_collided = false;
//CHECKS 1 PIXEL UP OR DOWN
if(place_meeting(x,y-1,o_spiderwall) or place_meeting(x,y+1,o_spiderwall))
{
	Vwall_collided = true;
}
else Vwall_collided = false;
}