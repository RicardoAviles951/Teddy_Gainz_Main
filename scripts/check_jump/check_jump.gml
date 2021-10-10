// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_jump(){
var jump = false;

if (key_jump) && (on_ground)
{
	jump = true;
}

if (jump==true) 
{
vsp = -jump_spd;	
}
}