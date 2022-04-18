var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);

switch(global.room) {
	case rooms.menu_room:
	//part_emitter_region(particle_sys,emitter_rain,camx-64,camx+global.view_width+356,camy+16,camy-global.view_height,ps_shape_rectangle,ps_distr_linear);
	//part_emitter_stream(particle_sys,emitter_rain,particle_type_rain,10);
	break;
	case rooms.cut_intro:
	if(alarm[0] = -1) alarm[0] = 15;
	break;
	case rooms.tutorial:
	if(alarm[0] = -1) alarm[0] = 15;
	break;
	case rooms.level1:
	if(alarm[0] = -1) alarm[0] = 15;
	break;
	case rooms.cut_level2:
	if(alarm[0] = -1) alarm[0] = 15;
	if alarm[1] = -1 alarm[1] = 45;
	/*part_emitter_region(particle_sys,emitter_rain,room_width/2,room_width/2,room_height+64,room_width+64,ps_shape_diamond,ps_distr_invgaussian);
	part_emitter_burst(particle_sys,emitter_rain,particle_type_party,1);*/
	break;
	case rooms.level2: 
	if(alarm[0] = -1) alarm[0] = 15;
	break;
	case rooms.cut_lv3:
	part_emitter_region(particle_sys,emitter_rain,camx-64,camx+global.view_width+356,camy+16,camy-global.view_height,ps_shape_rectangle,ps_distr_linear);
	part_emitter_stream(particle_sys,emitter_rain,particle_type_rain,10);
	break;
	case rooms.level3:
	part_emitter_region(particle_sys,emitter_rain,camx-64,camx+global.view_width+356,camy+16,camy-global.view_height,ps_shape_rectangle,ps_distr_linear);
	part_emitter_stream(particle_sys,emitter_rain,particle_type_rain,10);

	break;
}