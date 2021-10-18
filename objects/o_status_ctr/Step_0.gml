/// @description Insert description here
if(!global.game_is_paused) exit;

input_up_m    = keyboard_check_pressed(global.key_up);
input_down_m  = keyboard_check_pressed(global.key_down);
input_enter_m = keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_m - input_up_m;

//changing selections in the menu
if(ochange !=0) {
	menu_option[page] += ochange; 
	if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
	if(menu_option[page] < 0) { menu_option[page] = ds_height-1;}
	audio_play_sound(snd_menu_change, 2 ,false);
}
// What happens when you press the enter key
if(input_enter_m) {
	switch(ds_grid[# 1, menu_option[page]]) {
		case menu_element_type_p.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type_p.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
	}
	audio_play_sound(snd_click,2,false);
}
