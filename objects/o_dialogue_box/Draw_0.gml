
var c    = c_black;
var scale = .15//scales large font down
var len  = string_width_ext(myText,78,max_width/scale);//gets the width in pixels of the string while including the breakpoints with proper scaling.
var h    = string_height_ext(myText,78,max_width/scale);//gets height in pixels of the string with proper scaling. 
var pad = 4;//Adds space to between text and textbox elements
var sprite_h = sprite_get_height(s_dialogue_alt);//gets height of textbox sprite 
var adj = (y + sprite_h)-(h*scale*1.3);//Tricky math that ensures the text box grows from the bottom and not from the top. 
draw_set_halign(fa_left);//Sets the text to be to the right of the origin. (weird it's called fa_left)
draw_set_valign(fa_top);

//draw_line_width_color(x+(len*scale)/2,y+(h*scale*1.3)/2,o_cutscene_parent.target.x, o_cutscene_parent.target.y-sprite_get_height(o_cutscene_parent.target)/2,2,c_black,c_black);//draws line from target player to center of text box
draw_sprite_stretched(s_dialogue_alt,0,x-pad,adj,len*scale+(3*pad),h*scale*1.3);
if(counter<string_length(myText))
{
	counter++;
}

var substrng = string_copy(myText,1,counter)

draw_text_ext_transformed_color(x+pad,adj+2,substrng,78,max_width/scale,scale,scale,0,c,c,c,c,1);