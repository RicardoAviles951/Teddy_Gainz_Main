function dash_state(){
//only allowed if moving
if (hsp !=0)or (vsp !=0){
	dashing = true;
}
if (dashing){
	vsp = 0;
	hsp = sign(hsp)*dash_spd;
	x = x + hsp;
}
//Collisions
if (place_meeting(x+hsp,y,o_wall))
{
	while (!place_meeting(x+sign(hsp),y,o_wall))
	{
		x = x + sign(hsp);
	}
	dashing = false;
}
if keyboard_check_pressed(ord("L")){
	dashing = false
}
if (dashing == true) && (alarm[0] = -1){
		alarm[0]= 10;
		show_debug_message("DASHING NOW")
	}
if (dashing == false){
	state = states.normal;
}
}