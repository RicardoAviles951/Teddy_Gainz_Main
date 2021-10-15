/// @description Insert description here
// You can write your code in this editor

var x_offset = (global.view_width*23/24);
var y_offset = (global.view_width/24);

draw_sprite(s_ghost_powerup,0, (x_offset-64), y_offset);
if(global.orb_counter >0){
draw_set_color(c_black);
draw_text(x_offset, y_offset, string(global.orb_counter));
}
