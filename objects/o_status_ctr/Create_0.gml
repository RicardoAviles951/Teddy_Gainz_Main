/// @description Variable that stores whehter paused is T/F
global.game_is_paused = false;

enum pause_menu_page {
	main_p,
	level_select,
	settings,
	display,
	audio,
	exit_game,
	height
}

enum menu_element_type_p {
	script_runner,
	page_transfer,
	toggle,
	slider
}

ds_pause_menu = create_menu_page(
	["RESUME",       menu_element_type_p.script_runner,unpause],
	["LEVEL SELECT", menu_element_type_p.page_transfer, pause_menu_page.level_select],
	["RESTART",      menu_element_type_p.script_runner,restart_rm                  ],
	["SETTINGS",     menu_element_type_p.page_transfer, pause_menu_page.settings],
	["EXIT GAME",    menu_element_type_p.script_runner, back_to_main],
);

ds_level_select = create_menu_page(
	["TUTORIAL", menu_element_type_p.script_runner, level_select_p],
	["BEACH",    menu_element_type_p.script_runner, level_select_p],
	["PUZZLE BOSS", menu_element_type_p.script_runner, level_select_p],
	["CARNIVAL",    menu_element_type_p.script_runner, level_select_p],
	["CEMETARY", menu_element_type_p.script_runner, level_select_p],
	["BACK", menu_element_type_p.page_transfer, pause_menu_page.main_p]
);

ds_settings = create_menu_page(
	["DISPLAY",    menu_element_type_p.page_transfer,menu_page.display],
	["AUDIO",      menu_element_type_p.page_transfer,menu_page.audio],
	["BACK",       menu_element_type_p.page_transfer, pause_menu_page.main_p]
);

ds_menu_display = create_menu_page(
	["FULLSCREEN", menu_element_type_p.toggle, screen, 1, ["ON","OFF"]],
	["BACK",       menu_element_type_p.page_transfer, pause_menu_page.settings]
);

ds_menu_audio = create_menu_page(
	["MASTER",     menu_element_type_p.slider, change_volume, global.master, [0,1]],
	["MUSIC",      menu_element_type_p.slider, change_volume, global.music, [0,1]],
	["SFX",		   menu_element_type_p.slider, change_volume, global.sfx, [0,1]],
	["BACK",       menu_element_type_p.page_transfer, pause_menu_page.settings]
);

page = 0;
menu_pages = [ds_pause_menu, ds_level_select, ds_settings, ds_menu_display,ds_menu_audio];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
menu_option[i] = 0;
i++;
}

inputting = false;