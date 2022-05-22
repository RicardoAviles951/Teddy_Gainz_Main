var guiH = display_get_gui_height();
var guiW = display_get_gui_width();

//Aligns the text relative to the origin of the sprite. For the dialgoue box, the origin is set to top left. 
draw_set_font(f_gui);//Sets the font to the dialogue font.
draw_set_halign(fa_center);//Sets the text to be to the right of the origin. (weird it's called fa_left)
draw_set_valign(fa_top); //Sets the vertical alignment to be below the origin. 
draw_set_color(c_white); // Sets text color to be black. 
draw_text_ext(guiW/2,guiH/4,myText,64,guiW);
draw_set_halign(fa_left);
