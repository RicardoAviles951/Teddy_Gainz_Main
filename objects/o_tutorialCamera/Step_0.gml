/// Speed the camera up at every frame

var xs = camera_get_view_speed_x(global.Camera);
var ys = camera_get_view_speed_y(global.Camera);
if (view_enabled = true)
    {
    camera_set_view_speed(global.Camera, (xs + global.speedModifier), (ys + global.speedModifier));
    }
