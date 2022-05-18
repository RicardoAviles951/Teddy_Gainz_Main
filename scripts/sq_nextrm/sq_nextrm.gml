// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sq_nextrm(){
show_debug_message("NEXT");
TransitionStart(rm_main_menu,sq_fadeOut,sq_fadeIn);
room_goto_next();
}