/// @description Insert description here
// You can write your code in this editor

var x_offset = (global.view_width*23/24);
var y_offset = (global.view_height/24);

draw_sprite_ext(s_ghost_powerup,0, (x_offset-64), y_offset+32,2,2,0,c_white, 1);
//if(global.orb_counter >0){
draw_set_color(c_black);
draw_set_font(f_main_menu);
draw_text(x_offset+16, y_offset+48, string(global.orb_counter));
//}
var x_top = (global.view_width*20/24);
var y_top = (global.view_height*1/24) - 12;
var x_down = (global.view_width*(20/24)+15);
var y_down = (global.view_height*4/24)-32;
var c = c_black;
var r = c_red;
var g = c_purple;
var b = c_blue;

var y_diff = y_down - y_top;
var g_cooldown = clamp(ghost_timer,0,300)/300;


clamp(ghost_timer,0,300);
if(global.state == states.ghost) {
	ghost_timer++;
}
else {
	ghost_timer =0;
}

draw_rectangle(x_top-64,y_top,x_down-64,y_down,true);
draw_rectangle_color(x_top-64,y_top + (y_diff*g_cooldown),x_down-64,y_down,b,r,g,b,false);
show_debug_message("GHOST TMR" + string(ghost_timer));