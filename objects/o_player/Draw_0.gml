draw_self();
draw_set_alpha(1);
if(global.state == states.balloon)
{
	image_angle = o_balloon_up.image_angle;
}
else image_angle = 0; 