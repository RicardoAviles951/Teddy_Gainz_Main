//Floating 
y = y + sin(timer_crystal*.09)*.1;
timer_crystal++;

if(place_meeting(x,y,o_player) && collectable == true) {
	global.cam_shake = true;
	instance_create_layer(100,random_range(70,90), "Instances",o_rock);
	instance_create_layer(321,random_range(91,100), "Instances",o_rock);
	instance_create_layer(641,random_range(110,130), "Instances",o_rock);
	instance_create_layer(961,random_range(100,150), "Instances",o_rock);
	instance_destroy();
}