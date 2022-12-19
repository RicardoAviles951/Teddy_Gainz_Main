var x_offset = (global.view_width*23/24);
var y_offset = (global.view_height/24);


draw_set_color(c_black);
draw_set_font(f_main_menu);
draw_set_valign(fa_center);
draw_set_halign(fa_right);

var x_top = (global.view_width*20/24);
var y_top = (global.view_height*1/24);
var x_down = (global.view_width*(20/24)+15);
var y_down = (global.view_height*4/24)-12;
var c = c_black;
var r = c_red;
var g = c_purple;
var b = c_blue;

var y_diff = y_down - y_top;
var g_cooldown = clamp(ghost_timer,0,300)/300;
var cooldown_percent = clamp(cooldown, 0, 60)/60;
clamp(cooldown, 0, 60);

draw_rectangle(x_top,y_top,x_down,y_down,true);
draw_rectangle_color(x_top,y_top + (y_diff*cooldown_percent),x_down,y_down,g,g,g,g,false);
show_debug_message("Cooldown" +string(cooldown_percent));

if(global.state == states.dash or global.state == states.g_dash) {
		cooldown = 60;
	}
	else {
		cooldown = cooldown - 1;
	}

switch (global.room){
	case rooms.level3:
	draw_sprite_ext(s_ghost_powerup,0, (x_offset-64), y_offset+32,2,2,0,c_white, 1);
	draw_text(x_offset+16, y_offset+48, string(global.orb_counter));
	clamp(ghost_timer,0,300);
	if(global.state == states.ghost or global.state == states.g_dash) {
		ghost_timer++;
	}
	else {
		ghost_timer =0;
	}

	draw_rectangle(x_top-64,y_top,x_down-64,y_down,true);
	draw_rectangle_color(x_top-64,y_top + (y_diff*g_cooldown),x_down-64,y_down,b,r,g,b,false);
	//show_debug_message("GHOST TMR" + string(ghost_timer));
break;

	case rooms.finalboss:
	draw_sprite_ext(s_ghost_powerup,0, (x_offset-64), y_offset+32,2,2,0,c_white, 1);
	draw_text(x_offset+16, y_offset+48, string(global.orb_counter));
	clamp(ghost_timer,0,300);
	if(global.state == states.ghost or global.state == states.g_dash) {
		ghost_timer++;
	}
	else {
		ghost_timer =0;
	}

	draw_rectangle(x_top-64,y_top,x_down-64,y_down,true);
	draw_rectangle_color(x_top-64,y_top + (y_diff*g_cooldown),x_down-64,y_down,b,r,g,b,false);
	//show_debug_message("GHOST TMR" + string(ghost_timer));
break;

}