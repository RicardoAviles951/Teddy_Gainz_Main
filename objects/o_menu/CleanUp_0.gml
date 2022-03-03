show_debug_message("RUNNING");
var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
	ds_grid_destroy(menu_pages[i]);
	i++;
}
	