var guiW = display_get_width();
var guiH = display_get_gui_height();
var r = c_red;
var w = c_white;
var b = c_black;
if o_menu.title == true{
draw_set_font(f_title);
draw_set_halign(fa_right);
draw_text_ext_transformed_color(guiW/2+32,guiH/24,"TEDDY GAINZ",16,20000,2,2,0,w,w,w,w,1);
}
draw_set_halign(fa_left);