/// @description Insert description here
// You can write your code in this editor
var guiW = display_get_width();
var guiH = display_get_gui_height();


draw_set_color(c_red);
draw_set_font(f_main_menu);
draw_set_halign(fa_left);
draw_text_ext_transformed_color(0,guiH*23/24,"USE W & S to move selections. Use ENTER to select.",16,20000,.5,.5,0,c_red,c_red,c_red,c_red,1);