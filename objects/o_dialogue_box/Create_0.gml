//GUI dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//box dimensions
height = floor(guiH*.33);
width  = guiW-guiW/12;
box_spr = 0; //sets sub image for text box sprite 

//Position on screen
x = guiW/24;
y = 0;

//padding


//text vars
myText    = undefined;
spell_cnt = 0;

//sprite vars
sprite  = s_portrait_thicc;
spriteW = sprite_get_width(sprite);
spriteH = sprite_get_height(sprite);
xscale  = -1;
choice = false;

