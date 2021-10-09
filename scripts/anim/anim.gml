//Flips the sprite based the direction it is going.
function anim(){
if (on_ground) && (hsp !=0)
{
	sprite_index = s_player_walk;
}
else
{
sprite_index = s_player;	
}
if (hsp !=0) image_xscale = sign(hsp);
}