var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

var wantSize = 28; // height of text I want
var currSize = string_height(prompt); //Grabs the size of the font. 48
var scale = wantSize / currSize; 
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_font(f_dialogue_prmt);
draw_set_halign(fa_center);

draw_text_transformed(guiW/2, guiH*(23/24),prompt,scale,scale,0);