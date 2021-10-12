//When the game is paused it text will be drawn at nearly the middle of the viewport.
if(game_is_paused == true) {
	
var gwidth = global.view_width, gheight = global.view_height

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 48, x_buffer = 0; //Determines how far apart buttons are.
var start_y = (gheight*5/8) - (((ds_height-1/2)*y_buffer)), start_x = gwidth/2;

//Draw Menu "Back"
var c = c_black;
draw_rectangle_color(gwidth*3/8,gheight/4,gwidth*5/8, gheight*3/4,c,c,c,c,false);



//Draw elements on left side
draw_set_font(f_gui);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

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
//draw_line(start_x, start_y, start_x, left_txt_y);
}

