if(!global.pause) exit;

var gwidth = global.view_width, gheight = global.view_height

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 48, x_buffer = 16; //Determines how far apart buttons are.
var start_y = (gheight/2) - (((ds_height-1/2)*y_buffer)), start_x = gwidth/2;

//Draw Menu "Back"
var c = c_black;
draw_rectangle_color(0,0,gwidth, gheight,c,c,c,c,false);



//Draw elements on left side
draw_set_font(f_gui);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var left_txt_x = start_x - x_buffer, left_txt_y, x_offset;
var yy = 0; repeat(ds_height){
	left_txt_y = start_y + (yy*y_buffer);
	c = c_white;
	x_offset = 0;
	
	if(yy == menu_option[page]) {
		c = c_orange
		x_offset = -(x_buffer/2);
	}
	draw_text_color(left_txt_x + x_offset,left_txt_y, ds_grid[# 0, yy],c,c,c,c,1);
	yy++;
}


// draw dividing line
draw_line(start_x, start_y, start_x, left_txt_y);

//Draw elements on right side
switch(ds_grid[# 1, menu_option[page]]) {
		case menu_element_type.script_runner: draw_sprite(ds_grid[# 3, menu_option[page]],0,global.view_width*3/4, global.view_height*1/4) break;;
		break;
}

//draw_sprite(s_background_sky, 0, global.view_width*3/4, global.view_height/2);