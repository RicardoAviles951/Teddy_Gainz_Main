/// @description Insert description hereg

display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
	main,
	level_select,
	settings,
	display,
	audio,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	toggle
}

//CREATE MENU PAGES
ds_menu_main = create_menu_page(
	["NEW GAME",     menu_element_type.script_runner, new_game,s_pixel],
	["LEVEL SELECT", menu_element_type.page_transfer, menu_page.level_select,s_pixel],
	["SETTINGS",     menu_element_type.page_transfer, menu_page.settings,s_pixel],
	["EXIT GAME",    menu_element_type.script_runner, exit_game,s_pixel],
);

ds_level_select = create_menu_page(
	["TUTORIAL",    menu_element_type.script_runner, level_select,s_preview1],
	["BEACH",       menu_element_type.script_runner, level_select,s_preview2],
	["PUZZLE BOSS", menu_element_type.script_runner, level_select,s_preview3],
	["CEMETARY",    menu_element_type.script_runner, level_select,s_preview4],
	["FINAL BOSS",  menu_element_type.script_runner, level_select,s_preview5],
	["BACK",        menu_element_type.page_transfer, menu_page.main]
);

ds_settings = create_menu_page(
	["DISPLAY",    menu_element_type.page_transfer,menu_page.display],
	["AUDIO",      menu_element_type.page_transfer,menu_page.audio],
	["BACK",       menu_element_type.page_transfer, menu_page.main]
);

ds_menu_display = create_menu_page(
	["FULLSCREEN", menu_element_type.toggle, screen, 1, ["ON","OFF"]],
	["BACK",       menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_audio = create_menu_page(
	["MASTER",     menu_element_type.slider, change_volume, global.master, [0,1]],
	["MUSIC",      menu_element_type.slider, change_volume, global.music, [0,1]],
	["SFX",		   menu_element_type.slider, change_volume, global.sfx, [0,1]],
	["BACK",       menu_element_type.page_transfer, menu_page.settings]
);

page = 0;
menu_pages = [ds_menu_main, ds_level_select,ds_settings,ds_menu_display,ds_menu_audio];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
menu_option[i] = 0;
i++;
}

inputting = false;
title = true;