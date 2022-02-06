// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function guide(){
//start on left wall
if(leftwall){
	guide_x = right;
}
//start on right wall
if(rightwall){
	guide_x = left;
	
}
if(bottomwall) guide_y = up;
}