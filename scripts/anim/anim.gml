//Flips the sprite based the direction it is going.
function anim(){
if (on_ground) && (hsp !=0) && (hsp<4)
{
	sprite_index = s_player_walk;
}
else{
if(alarm[1] <=0) && (on_ground==true)
{
    idleAnimState = choose( 1, 2, 3, 4, 5, 6, 7, 8,9);
	alarm[1] = random_range(30,60);
}

switch( idleAnimState )
{
    case 1:    sprite_index = s_player_idle_blink;
    break;
    case 2: sprite_index = s_player_idle_blink;
    break;
	case 3:    sprite_index = s_player_idle_blink;
    break;
    case 4: sprite_index = s_player_idle_pluck;
    break;
	default: sprite_index = s_player_idle_blink;
}
//show_debug_message("anim" + string(idleAnimState));
}
if(abs(hsp)>4) && (on_ground) { 
sprite_index = s_player_run;
}
if(!on_ground){
	sprite_index = s_player_jump;
}
if (hsp !=0) image_xscale = sign(hsp);
}