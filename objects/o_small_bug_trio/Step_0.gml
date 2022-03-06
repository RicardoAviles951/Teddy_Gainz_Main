y = y + sin(.05*timer)*.8;
timer++;

switch(global.room){
	case rooms.cut_level1:
if cut_move {
	with(o_small_bug_trio){
		if (point_distance(x,y,160,448)>20){
			move_towards_point(160,448,2);
		}
		else {
			speed = 0;
			cut_move = false;
		}
	}
}
	break;

	
}