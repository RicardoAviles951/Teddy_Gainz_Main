var near      = layer_get_id("Backgrounds_near");
var stillnear = layer_get_id("Backgrounds_stillnear");
var middle    = layer_get_id("Backgrounds_middle");
var distant   = layer_get_id("Backgrounds_distant");
var faraway   = layer_get_id("Backgrounds_faraway");

layer_x(near, lerp(0, camera_get_view_x(view_camera[0]), 0.3));
layer_x(stillnear, lerp(0, camera_get_view_x(view_camera[0]), 0.5));
layer_x(middle, lerp(0, camera_get_view_x(view_camera[0]), 0.7));
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.8));
layer_x(faraway, lerp(0, camera_get_view_x(view_camera[0]), 0.9));
