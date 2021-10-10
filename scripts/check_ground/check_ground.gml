// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_ground(){
if (tile_place_meeting(x,y+1,"Collision"))
{
	on_ground = true
	show_debug_message("GROUND")
}
else
{
	on_ground = false
	//show_debug_message("AIR")
}
}