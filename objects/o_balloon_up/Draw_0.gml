draw_self();
//code for "swinging the balloon using a cosine function.
if(active){
image_angle = image_angle + cos(swing_spd*timer_balloon)*sign(vspd)*swing_force;
}

timer_balloon++;
