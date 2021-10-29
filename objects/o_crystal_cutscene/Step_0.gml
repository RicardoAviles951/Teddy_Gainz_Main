//Floating 
y = y + sin(timer_crystal*.09)*.1;
timer_crystal++;

if(place_meeting(x,y,o_player) && collectable == true) {
	global.cam_shake = true;
	instance_destroy();
}