function calc_basic_movement(){
//Determines if we move in the +x direction or -x direction.
var move = key_right - key_left;
//Stores a final value into the horizontal speed variable. 
hsp = move * walk_spd;
//Implements gravity by adding a positive value to vertical speed. 
vsp = vsp + grv
}