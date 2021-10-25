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
