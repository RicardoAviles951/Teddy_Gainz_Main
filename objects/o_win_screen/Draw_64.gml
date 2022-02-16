var c = c_white;
var box_scale = width/(sprite_get_height(s_container))
var pady = 64;
var padx = 64;
var thicc_h = sprite_get_height(thicc_spr);
var xscale_mp = 1;
var yoffset = 32;
draw_set_font(f_main_menu);
draw_set_halign(fa_center);

if(global.gamewin){
//Draw the box
if(thicc_spr == s_teddy_win) xscale_mp = -1;
if(thicc_spr == s_teddy_win) yoffset   = 96;
draw_sprite_stretched(s_container,box_c,guiW/3,guiH/4,width,length);
draw_text_ext_color(guiW/3+padx*box_scale/2,guiH/4+pady*box_scale/4,win_txt,32,1000,c,c,c,c,1);
draw_sprite_ext(thicc_spr,image_index/6,guiW/3-padx,guiH/4+thicc_h+yoffset,-5*xscale_mp,5,0,c,1);
draw_sprite(s_spacebar,image_index/30,guiW/2-sprite_get_width(s_spacebar)/2,guiH/2);
}
draw_set_halign(fa_left);