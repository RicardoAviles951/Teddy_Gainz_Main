
var near = instance_nearest(x,y, o_player);

move_towards_point(near.x, near.y, bullet_speed);

if (tile_place_meeting(x, y, "Collision"))
{
	instance_destroy();
}
