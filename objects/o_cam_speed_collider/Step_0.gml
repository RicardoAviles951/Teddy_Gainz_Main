if(place_meeting(x,y, o_player) && is_collidable == true) {
	switch(global.room){
		case rooms.tutorial:
		switch(global.collider) {
		case 0: global.cam_move_speed = 4.6; break;
		case 1: global.cam_move_speed = 4.7; break;
		case 2: global.cam_move_speed = 5; break;
	}
		break;
		case rooms.level1: 
		switch(global.collider) {
		case 0: global.cam_move_speed = 4.6; break;
		case 1: global.cam_move_speed = 4.7; break;
		case 2: global.cam_move_speed = 5; break;
	}
		break;
		case rooms.level2: 
		switch(global.collider) {
		case 0: global.cam_move_speed = 4.6;
		if(!instance_exists(o_bug)) instance_create_layer(-276,240,"Instances",o_bug);
		break;
		case 1: global.cam_move_speed = 4.9; break;
		case 2: global.cam_move_speed = 5; break;
	}
		break;
		case rooms.level3: 
		switch(global.collider) {
		case 0: global.cam_move_speed = 4.6;
		//if(!instance_exists(o_enemy)) instance_create_layer(-566,288,"Enemies",o_enemy);
		o_enemy.level_start = true;
		break;
		case 1: global.cam_move_speed = 4.7; break;
		case 2: global.cam_move_speed = 5; break;
	}
		break;
	}
	global.collider +=1;
	is_collidable = false;
	instance_destroy();
}