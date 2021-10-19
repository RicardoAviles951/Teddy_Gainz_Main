// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_select(){

var type = menu_option[page];
switch(type) {
	case 0: room_goto(rm_Tutorial); 
	room_reset_true(); break;
	case 1: room_goto(rm_Lvl1);
	room_reset_true(); break;
	case 2: room_goto(rm_Puzzle); break;
	case 3: room_goto(rm_Lvl3); 
	room_reset_true(); break; 
	case 4: room_goto(rm_finalboss);
	room_reset_true(); break;
}

}