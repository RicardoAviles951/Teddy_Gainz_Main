///Script that checks all bounding boxes of the tile. Returns value 0 if not colliding and 1 if colliding.
function tile_place_meeting(){
var xx = argument0;
var yy = argument1;
var layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//Save current x position of object.
var xp = x;
var yp = y;

//update postion
x = xx;
y = yy;

//check collision
var meeting =	tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) ||
				tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) ||
				tilemap_get_at_pixel(layer_id, bbox_left, y) ||
				tilemap_get_at_pixel(layer_id, bbox_right, y) ||
				tilemap_get_at_pixel(layer_id, bbox_left, bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, bbox_right, bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, x, y);

//Move Back
x = xp;
y = yp;

//Return
return meeting;
}