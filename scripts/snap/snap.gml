
function snap(){
var obj = instance_nearest(x,y,o_spiderwall);
var dis = distance_to_object(obj);

switch(spider_state){
	case spider.horz:
	if(dis>5){
		if(topwall){
			y-=dis-1;
		}
		if(bottomwall){ 
			y+=dis-1;
		}
	}
	break;
	
	case spider.vert:
	if(dis>5){
		if(leftwall){
			x-=dis-1;
		}
		if(rightwall){ 
			x+=dis-1;
		}
		break;
	}
}
}