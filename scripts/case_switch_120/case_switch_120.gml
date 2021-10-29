// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function case_switch_120(){
if(counter == 1200 || keyboard_check_pressed(vk_space))
			{
			 counter = 0;
		 	 ++currentStep;
			}
			
		else
			{
			 ++counter;
			}
}