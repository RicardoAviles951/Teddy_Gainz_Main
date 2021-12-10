//GUI dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//box dimensions
height = floor(guiH*.33);
width  = guiW-guiW/12;

//Position on screen
x = guiW/24;
y = 0;

//padding
pad = 32;

//text vars
myText    = undefined;
spell_cnt = 0;
char_name = "Thicc Legz";

//sprite vars
sprite  = s_border;
spriteW = sprite_get_width(sprite);
spriteH = sprite_get_height(sprite);
xscale  = 1;

