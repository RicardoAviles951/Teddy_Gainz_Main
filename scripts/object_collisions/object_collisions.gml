function object_collisions(){
if (place_meeting(x+hsp,y,o_weakwall))
{
	//while (!place_meeting(x+sign(hsp),y,o_weakwall))
	//{
	//	x = x + sign(hsp);
	//}
	hsp = hsp*.8;
}

//x = x + hsp;

//Vertical Collision
//if (place_meeting(x,y+vsp,o_weakwall))
//{
	//while (!place_meeting(x,y+sign(vsp),o_weakwall))
	//{
		//y = y + sign(vsp);
	//}
	//vsp = 0;
//}
//Offsets
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
//Horizontal collisions

//Snap
if place_meeting(x+sign(hsp),y,o_ghost_wall) {
    var wall = instance_place(x+sign(hsp),y,o_ghost_wall);
    if hsp > 0 { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if hsp < 0 { //left
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    hsp = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_death_zone))
{
	while (!place_meeting(x+sign(hsp),y,o_death_zone))
	{
		x = x + sign(hsp);
	}
	hsp = 0
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}

//Vertical Collision
if (place_meeting(x,y+vsp,o_death_zone))
{
	while (!place_meeting(x,y+sign(vsp),o_death_zone))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}
if (place_meeting(x,y,o_enemy))
{
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}

//triggers cutscene lvl 1, on the beach
if(place_meeting(x,y, o_thicc)) && !instance_exists(o_cutscene_parent)
{
	instance_create_layer(x, y, "Instances", o_cutscene_trigger);
	hsp = 0;
}

}


