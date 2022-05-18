var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var txt_pad = 32;
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(f_gui);
//Press space to continue 
draw_sprite_ext(s_spacebar,0,guiW*6/8-28,guiH*11/12-20,1.5,1.5,0,c_white,1);
draw_text(guiW*6/8+txt_pad,guiH*11/12,"CONTINUE CREDITS");

//Press enter to go to main menu
draw_sprite_ext(s_key_enter,0,guiW*1/8,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*1/8+txt_pad,guiH*11/12,"TO MAIN MENU");
