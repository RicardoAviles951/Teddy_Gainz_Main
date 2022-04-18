// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spider_anim(){
	if ropeAngle < 260{
		if image_index != 0 {
			image_speed = -1; 
		}
		else image_speed = 0;
	}
	if ropeAngle > 280{
		if image_index != 2{
			image_speed = 1; 
		}
		else image_speed = 0;
	}
//if ropeAngle > 250 image_index = 1;

}