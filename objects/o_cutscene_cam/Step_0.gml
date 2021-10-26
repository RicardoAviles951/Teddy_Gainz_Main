key_panR = keyboard_check(vk_right);
key_panL = keyboard_check(vk_left);
key_panU = keyboard_check(vk_up);
key_panD = keyboard_check(vk_down);

var move_x = key_panR - key_panL;
var move_y = key_panD - key_panU;

x_speed = 2*move_x;
y_speed = 2*move_y;

x+=x_speed;
y+=y_speed;