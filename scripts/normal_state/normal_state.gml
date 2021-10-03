function normal_state(){
get_input();
calc_smooth_movement();
check_ground();
check_jump();
{
// Horizontal collision

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0)
{
     if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right - x); //change 32 to other numbers based on the pixel size of the tilemap, 64 for 64 x 64 grid
     else x = x - (x mod 32) - (bbox_left - x);
     hsp = 0;
}

x += hsp;

// Vertical collision

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0)
{
     if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y); //change 32 to other numbers based on the pixel size of the tilemap, 64 for 64 x 64 grid
     else y = y - (y mod 32) - (bbox_top - y);
     vsp = 0;
}

y += vsp;
}
//anim;
	
	if (key_dash)&& (cooldown <1){
		state = states.dash;
		cooldown = 60;
	}
	cooldown = cooldown - 1;
}