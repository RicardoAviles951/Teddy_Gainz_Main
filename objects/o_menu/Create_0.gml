/// @description Insert description hereg

display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
	main,
	level_select,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer
}

//CREATE MENU PAGES
ds_menu_main = create_menu_page(
	["NEW GAME",     menu_element_type.script_runner, new_game,s_pixel],
	["LEVEL SELECT", menu_element_type.page_transfer, menu_page.level_select,s_pixel],
	["EXIT GAME",    menu_element_type.script_runner, exit_game,s_pixel],
);

ds_level_select = create_menu_page(
	["TUTORIAL", menu_element_type.script_runner, level_select,s_clutter_beachcastle1],
	["BEACH",    menu_element_type.script_runner, level_select,s_background_sky],
	["PUZZLE BOSS", menu_element_type.script_runner, level_select,s_clutter_foreshadowing],
	["CEMETARY", menu_element_type.script_runner, level_select,s_background_finalboss_menu],
	["BACK", menu_element_type.page_transfer, menu_page.main]
);

page = 0;
menu_pages = [ds_menu_main, ds_level_select];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
menu_option[i] = 0;
i++;
}
