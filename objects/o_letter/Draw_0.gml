/// @description Where the dialogue is drawn on the letter
// You can write your code in this editor

draw_self();

//Aligns the text relative to the origin of the sprite. For the dialgoue box, the origin is set to top left. 
draw_set_font(f_dialogue);//Sets the font to the dialogue font.
draw_set_halign(fa_left);//Sets the text to be to the right of the origin. (weird it's called fa_left)
draw_set_valign(fa_top); //Sets the vertical alignment to be below the origin. 
draw_set_color(c_black); // Sets text color to be black. 
var wantSize = 20; // height of text I want
var currSize = string_height(myText); //Grabs the size of the font. 48
var scale = wantSize / currSize; //Creates a scale to achieve the desired size.
var box_size = sprite_get_width(s_dialogue_box) - 16 //Stores the desired length before breaking a string.

var substring = string_copy(myText,1,spell_cnt);
//Code used to draw each character per frame to achieve the "spelling effect"
if(spell_cnt < string_length(myText))
{
	spell_cnt++;
}
//Postitions the text to fit our box using some sneaky math. 
draw_text_ext_transformed(x+75, y+90, substring, currSize-16, box_size*3.5 , scale, scale, 0); 
