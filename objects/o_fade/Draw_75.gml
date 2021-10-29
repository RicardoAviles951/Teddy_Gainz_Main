var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//draw fade
draw_set_alpha(alpha);
draw_set_color = color;

draw_rectangle(0,0,guiW,guiH,false);

draw_set_alpha(1);
draw_set_color(c_white);