//Oscillates between 1 and -1 by a value stored in swing_spd
//note that ropeAngle is first specified in the create event as a point distance.
var ropeAngleAcceleration = swing_spd * dcos(ropeAngle);
ropeAngleVelocity += ropeAngleAcceleration;
//sets rope angle 
ropeAngle += ropeAngleVelocity;
//ropeAngleVelocity *= .99; //dampener to slow down
ropeX = grappleX + lengthdir_x(ropeLength,ropeAngle);
ropeY = grappleY + lengthdir_y(ropeLength,ropeAngle);
switch(spider_state){
case spider_boss.swing:
hsp = ropeX - x;
vsp = ropeY - y;


x+=hsp;
y+=vsp;
image_angle = ropeAngle +90;
break;

case spider_boss.broken:
hsp = ropeX*.01;
vsp =ropeY*.01;
x+=hsp;
y+=vsp;
break;
}
key_spider = keyboard_check_pressed(vk_up);

if key_spider {
	summoning = true;
}

if summoning and alarm[0] = -1 {
	with(instance_create_layer(36,-20,"spider",o_spider_baby)){
		image_yscale = -1;
		image_xscale = -1;
		image_angle = 90;
	}
	instance_create_layer(1276,-8,"spider",o_spider_baby);
	layer_set_fx("fx_shake",o_effect_ctr.shake_fx);
	alarm[0] = 30;
}
if(!instance_exists(o_balloon_up)) {
	instance_create_layer(640,576,"balloon",o_balloon_up);
}
show_debug_message("SUMMON TIME: " + string(summon_time));