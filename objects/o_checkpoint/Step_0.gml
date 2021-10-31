/// @description Insert description here
// You can write your code in this editor
x = o_cameraTarget.x - 400;
y = (o_cameraTarget.y);

if (place_meeting(x,y,o_player))
{
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}