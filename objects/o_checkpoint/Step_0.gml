/// @description Insert description here
// You can write your code in this editor
var camW = camera_get_view_width(view_camera[0]);
var camH = camera_get_view_height(view_camera[0]);
x = o_cameraTarget.x - camW/2-300
y = o_cameraTarget.y + camH/4;

if (place_meeting(x,y,o_player))
{
	room_reset_true();
	room_restart();
	//x=o_tutorial_spawn.x;
	//y=o_tutorial_spawn.y;
}

