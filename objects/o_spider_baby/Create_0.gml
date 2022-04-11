spider_state = noone;
enum spider {
	horz,
	vert,
}
hsp = 0;
vsp = 0;
move_H =choose(3,4,5);
move_V = choose(3,4,5);
Hwall_collided = false;
Vwall_collided = false;
leftwall= false;
rightwall = false;
topwall = false;
bottomwall = false;
climbing = false;
left = -1;
right = 1;
up = -1;
down = 1;
guide_x = 1;
guide_y = 1; 