//Flips the sprite based the direction it is going.
function anim_ghost(){
if (on_ground) && (hsp !=0) && (hsp<4)
{
	sprite_index = s_player_ghostwalk;
}
else{
if(on_ground==true && hsp = 0) {
	sprite_index = s_player_ghost;
}
}
if(abs(hsp)>4) && (on_ground){ 
sprite_index = s_player_ghostrun;
}
if(!on_ground){
	sprite_index = s_player_ghostjump;
}
if (hsp !=0) image_xscale = sign(hsp);
}