/// @description Dash indicator
var x_top = (global.view_width*20/24);
var y_top = (global.view_height*1/24) - 12;
var x_down = (global.view_width*(20/24)+15);
var y_down = (global.view_height*4/24)-32;
var c = c_black;
var r = c_red;
var g = c_purple;

var y_diff = y_down - y_top;
var cooldown_percent = clamp(cooldown, 0, 60)/60;

clamp(cooldown, 0, 60);

draw_rectangle(x_top,y_top,x_down,y_down,true);
draw_rectangle_color(x_top,y_top + (y_diff*cooldown_percent),x_down,y_down,g,g,g,g,false);
show_debug_message(cooldown_percent);