/// @description Summon Alarm

//Increments the summon_time var to trigger the stop event. 
summon_time+=1;
// Resets the summoning variable.The summon time variable increments by 2 every second. 
if(summon_time >=summon_max){
	summoning = false;
	summon_time = 0;
}