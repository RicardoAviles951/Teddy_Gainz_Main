
var near = instance_nearest(x,y, o_player);

move_towards_point(near.x, near.y, bullet_speed);

if (tile_place_meeting(x, y, "Collision"))
{
	instance_destroy();
}

if(place_meeting(x,y,o_player) && global.state != states.ghost && global.state != states.g_dash) {
	global.state = states.death;
	instance_destroy();
}