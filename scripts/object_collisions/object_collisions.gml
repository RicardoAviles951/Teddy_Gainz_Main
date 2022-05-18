function object_collisions(){
if (place_meeting(x+hsp,y,o_weakwall))
{
	hsp = hsp*.8;
}
wall = instance_nearest(x,y,o_ghost_wall)
//Horizontal collisions
if (place_meeting(x+hsp,y,o_ghost_wall) and wall.ghosted == false)
{
	while (!place_meeting(x+sign(hsp),y,o_ghost_wall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_death_zone))
{
	while (!place_meeting(x+sign(hsp),y,o_death_zone))
	{
		x = x + sign(hsp);
	}
	global.death_cnt += 1;
	hsp = 0
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}

//Vertical Collision
if (place_meeting(x,y+vsp,o_death_zone))
{
	while (!place_meeting(x,y+sign(vsp),o_death_zone))
	{
		y = y + sign(vsp);
	}
	global.death_cnt += 1;
	vsp = 0;
	room_reset_true();
	room_restart();
	x=o_tutorial_spawn.x;
	y=o_tutorial_spawn.y;
	image_xscale = 1;
}
if (place_meeting(x,y,o_enemy_parent))
{
	//if !audio_is_playing(snd_death_cluck) audio_play_sound(snd_death_cluck,1,false);
	global.state = states.death;
}

if (place_meeting(x,y,o_spider_baby) and global.room == rooms.boss_spider){
	global.state = states.death;
}

//triggers cutscene lvl 1, on the beach
if(place_meeting(x,y, o_thicc)) && !instance_exists(o_cutscene_parent)
{
	instance_create_layer(x, y, "Instances", o_cutscene_trigger);
	hsp = 0;
}

if instance_exists(o_spider)
{
	if alarm[6] = -1 and o_spider.spider_state != spider_boss.swing_idle
	{
		alarm[6] = 120;
	}
	if (place_meeting(x,y,o_spider) and spider_smack == false)
	{
		if !audio_is_playing(snd_slap) audio_play_sound(snd_slap,1,false);
		audio_sound_pitch(snd_slap,random_range(.95,1.1));
		hsp -= 10;
		spider_smack = true;
	}
	
	if spider_smack and global.bumped == false{
		with(instance_create_layer(x,y,"Instances",o_dialogue_box)){
			sprite  = s_portrait_unk;
			box_spr = 1;
			myText  = "GET DOWN FROM THERE!!";
		}
		if alarm[7] = -1 alarm[7] = 120;
		global.bumped = true;
	}
}

}


