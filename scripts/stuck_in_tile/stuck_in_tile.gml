// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stuck_in_tile(){
if(place_meeting(x,y,o_spiderwall))
{
	show_debug_message("stuck in wall");
	for(var i = 0; i < 1000; ++i){
		if(!place_meeting(x,y+i,o_spiderwall)){
			y+=i;
			break;
		}
		if(!place_meeting(x,y-i, o_spiderwall)){
			y-=i;
			break;
		}
		if(!place_meeting(x+i,y,o_spiderwall)){
			x+=i;
			break;
		}
		if(!place_meeting(x-i,y,o_spiderwall)){
			x-=i;
			break;
		}
		if(!place_meeting(x+i,y+i,o_spiderwall)){
			y+=i;
			x+=i;
			break;
		}
		if(!place_meeting(x-i,y-i,o_spiderwall)){
			y-=i;
			x-=i;
			break;
		}
		if(!place_meeting(x-i,y+i,o_spiderwall)){
			y+=i;
			x-=i;
			break;
		}
		if(!place_meeting(x+i,y-i,o_spiderwall)){
			y-=i;
			x+=i;
			break;
		}
	}
}
}