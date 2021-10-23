//Floating 
y = y + sin(timer_crystal*.09)*.1;
timer_crystal++;

if(place_meeting(x,y,o_player) && collectable == true) {
	instance_create_layer(random_range(0,320),random_range(70,90), "Instances",o_rock);
	instance_create_layer(random_range(321,640),random_range(91,100), "Instances",o_rock);
	instance_create_layer(random_range(641,960),random_range(110,130), "Instances",o_rock);
	instance_create_layer(random_range(961,1280),random_range(100,150), "Instances",o_rock);
	instance_destroy();
}