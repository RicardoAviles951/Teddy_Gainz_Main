//Sets the font to the dialogue font.
draw_set_font(f_text);

//temp vars that store the gui dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//Draw the rectangle
draw_sprite_stretched(s_dialogue_alt,0,x,y,width,height);
// temp vars to hold size information and colors
var scale     = 1.5;
var sizeW     = spriteW*scale;
var sizeH     = spriteH*scale;
var c         = c_white;
var b         = c_black;


//Draws sprite portrait
draw_sprite_ext(sprite, 0, (x+sizeW/2)+width/16,y+height/2,-scale*xscale,scale,0,c,1);

//Portrait text that displays the name of character talking underneath
//draw_text_ext_transformed_color(x+sizeW*(13/16),y+height*(7/8),char_name,16,1000,.5,.5,0,b,b,b,b,1);


//draw flashing button.
draw_sprite(s_spacebar,image_index/30,x+width-64,y+height*(3/4));

//text alignments
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Copying each individual character in the string
var substring = string_copy(myText,1,spell_cnt);
//Code used to draw each character per frame to achieve the "spelling effect"
if(spell_cnt < string_length(myText))
{
	spell_cnt++;
}
//drawing text.
draw_text_ext_color(guiW/4,y+height/2-sizeH/2,substring,32,width-guiW/4,b,b,b,b,1);

//Drawing choices
if(choice)
{
draw_sprite_ext(s_key_num1,0,guiW/4+16,y+height/2-sizeH/2+16,3,3,0,c_white,1);
}
