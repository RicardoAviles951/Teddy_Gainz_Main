if(global.orb_counter <3){
	is_collectible = true;
}
else{
	is_collectible = false;
}
vsp_crystal = y_spd
if(tile_place_meeting(x,y, "Collision")){
	 vsp_crystal = 0;
}
y = y + sin(timer_orb*.05)*.2;

timer_orb++;


y += vsp_crystal;

