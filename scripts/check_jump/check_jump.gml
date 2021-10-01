// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_jump(){
var jump = false;

if (key_jump) && place_meeting(x,y+vsp,o_wall)
{
	jump = true;
}

if (jump==true)
{
vsp = -jump_spd;	
}
}