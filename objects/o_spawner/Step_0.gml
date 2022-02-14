if(place_meeting(x,y,o_player) and activated == false){
	
	with(instance_create_layer(6388,48,"Instances", o_spider_baby)){
		image_yscale = -1;
	}
	activated = true;
}