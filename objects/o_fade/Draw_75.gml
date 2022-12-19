var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
draw_set_color(color);
//draw fade
draw_set_alpha(alpha);


draw_rectangle_color(0,0,guiW,guiH,color,color,color,color,false);

draw_set_alpha(1);
draw_set_color(c_white);