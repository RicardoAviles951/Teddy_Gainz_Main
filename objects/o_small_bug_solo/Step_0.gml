switch(global.room){
	case rooms.level2:
with(inst_579DB0A6){
	if(point_distance(x,y,1100,496) > 20){
		move_towards_point(1100,496,5);
	}
	else speed = 0;
	
y = y + sin(.08*timer)*.5;
}
break;
	case rooms.cut_level1:
if cut_move
{
	with(o_small_bug_solo){
		if(point_distance(x,y,544,416)>20){
			move_towards_point(544,416,2);
		}
		else {
			speed = 0;
			cut_move = false;
		}
	}
}
	break;
	case rooms.level1:
	x = o_cameraTarget.x - distance;
	with(inst_F426693){
	y = y + sin(.05*timer)*bob_strength;
	}
	with(inst_17B108F6){
	y = y + sin(.05*timer)*bob_strength;	
	}
	break;
}
timer++;

