//Sets length of health bar to cover 2/4 of the camera.
//Sets height of the health bar to be 1/24 of the camera high.
var x_top = (global.view_width*1/4)
var y_top = (global.view_height*1/24)
var x_down = (global.view_width*3/4)
var y_down = (global.view_height*2/24)

//Draws an emptry rectangle with nice colors on the outline.
draw_rectangle_color(x_top,y_top, x_down, y_down, c_orange, c_white, c_red, c_blue, true);

//Draws filled rectanlge with red and orange. The length shortens based on the health of the boss.
draw_rectangle_color(x_top,y_top, x_down-damage, y_down, c_red, c_orange, c_red, c_orange, false);

//Checks what the boss health is and sets the damage variable. 
switch (global.boss_health){
	case 2: damage = (global.view_width*3/16); break;
	case 1: damage = (global.view_width*3/8); break;
	case 0: damage = (global.view_width*1/2); break;
	default: damage = 0;
}