with(inst_579DB0A6){
	if(point_distance(x,y,1100,496) > 20){
		move_towards_point(1100,496,5);
	}
	else speed = 0;
}
y = y + sin(.08*timer)*.5;
timer++;