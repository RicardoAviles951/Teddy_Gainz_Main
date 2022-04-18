/// @description Wind Particles
var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);
alarm_set(alarm[0],15);
part_particles_create(particle_sys,camx+global.view_width,camy+random_range(16,global.view_height),particle_type_wind,1);