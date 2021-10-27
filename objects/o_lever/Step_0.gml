/// @description Insert description here
// You can write your code in this editor

counter = 0;

if(place_meeting(x,y,o_player))
	{
	o_switch.image_speed = 1;
	instance_destroy(o_gate);
	}
	
if(counter == 24)
{
	o_switch.image_speed = 0;
}
