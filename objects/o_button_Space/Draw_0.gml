draw_self();
draw_set_font(f_prompts);
var wantSize = 24; // height of text I want
var currSize = string_height("PRESS TO JUMP"); //Grabs the size of the font. 48
var scale = wantSize / currSize; 
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_center);

draw_text_transformed(x, y-32,"PRESS TO JUMP",scale,scale,0);
