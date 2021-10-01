function calc_smooth_movement(){
//Sets the direction we walk in (-1 or 1) and multiplies it by the value from the walk speed variable.
var move = (key_right - key_left)*walk_spd;

//Sets the horizontal speed to the value acheived from the approach function.
hsp = approach(hsp, move, acceleration);

//Implements gravity by adding a positive value to vertical speed. 
vsp = vsp + grv;
}