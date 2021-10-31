/// @description Insert description here
// You can write your code in this editor

//x = o_cameraTarget.x - 380;
//y = (o_cameraTarget.y - 144)+sin(timer_bug*.10)*10
//timer_bug++;

//if (place_meeting(x,y, o_player))
//{
	//room_restart();
	//global.cam_move_speed = 0;
//}

if(o_enemy_intro_only.x != -32)
{
	++o_enemy_intro_only.x;
}

else
{
	o_enemy_intro_only.x = -32
	room_goto_next();
}

if(o_enemy_intro_only.x = -100)
{
	instance_create_layer(o_player.x, o_player.y - 70, "Instances", o_double_exclamation);
}


