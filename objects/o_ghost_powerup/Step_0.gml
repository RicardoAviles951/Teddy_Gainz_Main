if(global.orb_counter <3){
	is_collectible = true;
}
else{
	is_collectible = false;
}

y = y + sin(timer_orb*.05)*.2;

timer_orb++;