if(!global.pause) exit;

input_up_m    = keyboard_check_pressed(global.key_up);
input_down_m  = keyboard_check_pressed(global.key_down);
input_enter_m = keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_m - input_up_m;

if(inputting) {

switch(ds_grid[# 1, menu_option[page]]) {
		case menu_element_type.slider: 
		
		switch(menu_option[page]) {
			case 0: break;
			case 1: break;
			case 2: if(!audio_is_playing(snd_dash)) audio_play_sound(snd_dash,1,false); break;
		}
		
		var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
		
		if(hinput !=0) {
			//audio
			ds_grid[# 3,menu_option[page]] += hinput*.01;
			ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
			if(inputting) {script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);}
		}
		break;
		case menu_element_type.toggle:
		
		var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
		
		if(hinput !=0) {
			//audio
			ds_grid[# 3,menu_option[page]] += hinput;
			ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
		}
		break;

}
}
else
{
//changing selections in the menu
if(ochange !=0) {
	menu_option[page] += ochange; 
	if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
	if(menu_option[page] < 0) { menu_option[page] = ds_height-1;}
	audio_play_sound(snd_menu_change, 2 ,false);
}
}
// What happens when you press the enter key
if(input_enter_m) {
	switch(ds_grid[# 1, menu_option[page]]) {
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.slider: if(inputting) {script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);}
		case menu_element_type.toggle: if(inputting) {script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);}
			inputting = !inputting;
			break;
	}
	audio_play_sound(snd_click,2,false);
}
if menu_pages[page]=1{
	title = false;
}
else
{
	title = true;
}
show_debug_message(menu_pages[page]);