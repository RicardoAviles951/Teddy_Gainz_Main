/// @description Summon Alarm

//Increments the summon_time var to trigger the stop event. 
summon_time+=1;
// Resets the summoning variable
if(summon_time >=15){
	summoning = false;
	summon_time = 0;
	layer_clear_fx("fx_shake");
}