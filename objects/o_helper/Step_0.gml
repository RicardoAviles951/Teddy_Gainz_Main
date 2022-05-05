if global.death_cnt == 5 and global.help == false{

	if !instance_exists(o_dialogue_box){
		with(instance_create_layer(x,y,"Instances",o_dialogue_box)){
			sprite = s_portrait_teddy;
			box_spr = 0;
			myText = "Jumping and then dashing at the LAST second should get me farther";
		}
		
	}
}

if keyboard_check_pressed(vk_space) and global.death_cnt == 5{
	global.help = true
	instance_destroy(o_dialogue_box);
}
