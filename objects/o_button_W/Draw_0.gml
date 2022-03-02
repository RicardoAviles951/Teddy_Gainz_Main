draw_self();
if !rm_main_menu{
draw_set_font(f_prompts);
var wantSize = 12; // height of text I want
var currSize = string_height("PRESS TO ENTER GHOST FORM"); //Grabs the size of the font. 48
var scale = wantSize / currSize; 
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_center);

draw_text_transformed(x, y-32,"PRESS FOR GHOST FORM",scale,scale,0);
}