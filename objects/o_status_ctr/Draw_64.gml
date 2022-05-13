//When the game is paused it text will be drawn at nearly the middle of the viewport.
if(global.game_is_paused == true) {
	
var gwidth = global.view_width, gheight = global.view_height

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 48, x_buffer = 0; //Determines how far apart buttons are.
var start_y = (gheight*5/8) - (((ds_height-1/2)*y_buffer)), start_x = gwidth/2;

//Draw Menu "Back"
var cb = c_black;
draw_rectangle_color(gwidth*3/16,gheight/4,gwidth*13/16, gheight*3/4,cb,cb,cb,cb,false);



//Draw elements on left side
draw_set_font(f_main_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
var c = c_white;
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

//Draw elements on right side
//switch(ds_grid[# 1, menu_option[page]]) {
		//case menu_element_type_p.script_runner: draw_sprite(ds_grid[# 3, menu_option[page]],0,global.view_width*3/4, global.view_height*1/4) break;;
		//break;
//}

draw_set_halign(fa_left);

var rtx = start_x+192 , rty;
yy = 0; repeat (ds_height) {
	
	rty = start_y + (yy*y_buffer);
	switch(ds_grid[# 1, yy]) {
		case menu_element_type_p.slider: 
			var len           = 64;
			var current_val   = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0])/(current_array[1] - current_array[0]));
			c = c_white;
			draw_line_width(rtx, rty+16, rtx+len, rty+16, 2);
			
			if(inputting and yy == menu_option[page])
			{
				c = c_yellow;
			}
			draw_circle_color(rtx + (circle_pos*len), rty+16, 4, c,c,false);
			draw_text_color(rtx+(len*1.2), rty, string(floor(circle_pos*100)) + "%", c,c,c,c,1);
		break;
		
		case menu_element_type_p.toggle: 
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_white;
			
			if(inputting and yy == menu_option[page])
			{
				c = c_yellow;
			}
			
			if(current_val == 0)
			{
				c1 = c;
				c2 = c_dkgray;
			}
			else
			{
				c1 = c_dkgray;
				c2 = c;
			}
			
			draw_text_color(rtx, rty, "ON", c1,c1,c1,c1,1);
			draw_text_color(rtx + 128, rty, "OFF", c2,c2,c2,c2,1);
			break;
	}
	yy++;
}


draw_set_valign(fa_middle);
//draw_line(start_x, start_y, start_x, left_txt_y);
}

