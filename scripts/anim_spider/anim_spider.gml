// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function anim_spider(){
switch(spider_state)
{
	case spider.horz:
		if (hsp !=0){
			image_xscale = sign(hsp);
			sprite_index = s_baby_walk;
		}
		else sprite_index = s_baby_idle;
		if(topwall) image_yscale    = -1;
		if(bottomwall) image_yscale = 1;
		break;
	
	case spider.vert:
		if (vsp !=0){
			image_xscale = -sign(vsp);
			sprite_index = s_baby_walk;
		}
		else sprite_index = s_baby_idle;
		if(leftwall){
			image_yscale = -1;
		}
		if(rightwall){
			image_yscale = 1;
		}
		break;
	}
}

