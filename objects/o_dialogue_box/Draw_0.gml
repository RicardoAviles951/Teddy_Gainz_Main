/// @description Where the dialogue is drawn
// You can write your code in this editor

draw_self();
draw_set_color(c_black); // Sets text color to be black. 
//Aligns the text relative to the origin of the sprite. For the dialgoue box, the origin is set to top left. 
draw_set_font(f_dialogue);//Sets the font to the dialogue font.
draw_set_halign(fa_left);//Sets the text to be to the right of the origin. (weird it's called fa_left)
draw_set_valign(fa_top); //Sets the vertical alignment to be below the origin. 

var wantSize = 20; // height of text I want
var currSize = string_height(myText); //Grabs the size of the font. 48
var scale = wantSize / currSize; //Creates a scale to achieve the desired size.
var box_size = sprite_get_width(s_dialogue_box) - 16 //Stores the desired length before breaking a string.
//Postitions the text to fit our box using some sneaky math. 
draw_text_ext_transformed(x+8, y+4, myText, currSize-16, box_size*4.7 , scale, scale, 0); 



//draw_text_transformed(x+8, y+4, myText, scale, scale, 0); 
//draw_text_ext(x+8, y+4, myText, 16, sprite_get_width(s_dialogue_box) - 16);//Draws the text at the origin and breaks 16 pixels before the sprite's width. 


//draw_text_ext(bbox_left + 4, bbox_top + 4, myText, 16, sprite_width - 16);