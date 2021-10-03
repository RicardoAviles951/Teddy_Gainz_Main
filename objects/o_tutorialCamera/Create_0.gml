/// Camera script
// You can write your code in this editor
#macro CameraWidth 640
#macro CameraHeight 360
#macro CameraScale 3
global.camXSpeed = 2
global.camYSpeed = 2
global.speedModifier = 0.05
global.Camera = camera_create_view(0,0, CameraWidth, CameraHeight);

camera_set_view_border(global.Camera, CameraWidth, CameraHeight); //width and height of the view
camera_set_view_target(global.Camera, o_cameraTarget); //what the camera is following
global.camera_set_view_speed(global.Camera, global.camXSpeed, global.camYSpeed); // camera speed

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);

//Viewport
window_set_size(CameraWidth * CameraScale, CameraHeight * CameraScale);
surface_resize(application_surface, CameraWidth * CameraScale, CameraHeight * CameraScale);
var windowWidth = CameraWidth * CameraScale;
var windowHeight = CameraHeight * CameraScale;
window_set_position(display_get_width() / 2  - windowWidth / 2, display_get_height() / 2 - windowHeight /2);