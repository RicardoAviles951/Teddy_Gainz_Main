var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

var txt_pad = 32;

draw_set_font(f_main_menu9);
draw_set_halign(fa_left);
draw_set_color(c_white);
switch(global.room){
case rooms.menu_room:
//W key for UP
draw_sprite_ext(s_key_W,0,guiW*1/8,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*1/8+txt_pad,guiH*11/12,"UP");

//S key for DOWN
draw_sprite_ext(s_key_S,0,guiW*2/8,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*2/8+txt_pad,guiH*11/12,"DOWN");

//A key for LEFT
draw_sprite_ext(s_key_A,0,guiW*3/8,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*3/8+txt_pad,guiH*11/12,"LEFT");

//D key for RIGHT
draw_sprite_ext(s_key_D,0,guiW*4/8,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*4/8+txt_pad,guiH*11/12,"RIGHT");

//Enter key for SELECT
draw_sprite_ext(s_key_enter,0,guiW*3/4,guiH*11/12,.75,.75,0,c_white,1);
draw_text(guiW*3/4+txt_pad,guiH*11/12,"SELECT");
break;

case rooms.puzzleboss:
//A key for LEFT
draw_sprite_ext(s_key_A,0,guiW*.05,guiH*.95,.75,.75,0,c_white,1);
draw_text(guiW*.05+txt_pad,guiH*.95,"MOVE LEFT");
break;
}

