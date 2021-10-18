/// @description Variable that stores whehter paused is T/F
global.game_is_paused = false;

enum pause_menu_page {
	main_p,
	level_select,
	exit_game,
	height
}

enum menu_element_type_p {
	script_runner,
	page_transfer
}

ds_pause_menu = create_menu_page(
	["RESUME",     menu_element_type_p.script_runner,unpause],
	["LEVEL SELECT", menu_element_type_p.page_transfer, menu_page.level_select],
	["EXIT GAME",    menu_element_type_p.script_runner, back_to_main],
);

ds_level_select = create_menu_page(
	["TUTORIAL", menu_element_type_p.script_runner, level_select],
	["BEACH",    menu_element_type_p.script_runner, level_select],
	["PUZZLE BOSS", menu_element_type_p.script_runner, level_select],
	["CEMETARY", menu_element_type_p.script_runner, level_select],
	["BACK", menu_element_type_p.page_transfer, pause_menu_page.main_p]
);

page = 0;
menu_pages = [ds_pause_menu, ds_level_select];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
menu_option[i] = 0;
i++;
}