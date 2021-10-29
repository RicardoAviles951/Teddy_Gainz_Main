if(fade_state == 0)
{
	timer+=2
	if(timer >= 60 && alarm[0] =-1)
	{
	alarm[0] = 60;
	}
}
if (fade_state ==1)
{
	timer -=1;
	if(timer <= 0) instance_destroy();
}
//set alpha
alpha = timer/60;
show_debug_message("TIMER" + string(timer));