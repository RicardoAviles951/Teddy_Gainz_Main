particle_sys = part_system_create();

particle_type_dash_fade = part_type_create();
particle_type_gdash_fade = part_type_create();
particle_type_wind = part_type_create();
particle_type_rain = part_type_create();
emitter_rain = part_emitter_create(particle_sys);

//Regular Dash
part_type_sprite(particle_type_dash_fade, s_player_dash, 0,0,1);
part_type_size(particle_type_dash_fade,1,1,0,.25);
part_type_life(particle_type_dash_fade,15,15);
part_type_alpha3(particle_type_dash_fade, .5,.3,.1);
part_type_color1(particle_type_dash_fade, c_white);
//Ghost dash
part_type_sprite(particle_type_gdash_fade, s_player_ghostdash, 0,0,1);
part_type_size(particle_type_gdash_fade,1,1,0,.25);
part_type_life(particle_type_gdash_fade,15,15);
part_type_alpha3(particle_type_gdash_fade, .5,.3,.1);
part_type_color1(particle_type_gdash_fade, c_white);
//Wind 
part_type_shape(particle_type_wind,pt_shape_pixel);
part_type_size(particle_type_wind, 1,3,0,0);
part_type_direction(particle_type_wind,170,180,0,0);
part_type_speed(particle_type_wind, 1.5,5,0,0);
part_type_life(particle_type_wind,1000,1000);
//Rain
part_type_shape(particle_type_rain,pt_shape_line);
part_type_orientation(particle_type_rain,270,270,0,0,0);
part_type_size(particle_type_rain, .1,.2,0,0);
part_type_direction(particle_type_rain,270,270,0,0);
part_type_speed(particle_type_rain, 5,10,0,0);
part_type_life(particle_type_rain,1,1000);
part_type_gravity(particle_type_rain,.2,270);
part_type_alpha2(particle_type_rain,.5,.2);
