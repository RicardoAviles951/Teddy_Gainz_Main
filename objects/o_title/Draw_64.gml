var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var w = c_white;
if o_menu.title == true{
draw_set_font(f_title);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(guiW/2-8,guiH/24,"TEDDY GAINZ",16,20000,2,2,0,w,w,w,w,1);
}
draw_set_halign(fa_left);