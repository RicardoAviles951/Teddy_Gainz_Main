// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_jump(){
var jump = false;

if (key_jump) && (tile_place_meeting(x,y+1,"Collision"))
{
	jump = true;
}

if (jump==true)
{
vsp = -jump_spd;	
}
}