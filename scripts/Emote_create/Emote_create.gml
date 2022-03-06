///Emote_create(emote,place,x_off,y_off)
///@param emote
///@param place
///@param x_off
///@param y_off

function Emote_create(){

var emote   = argument[0];
var place   = argument[1];
var x_off   = argument[2];
var y_off   = argument[3]

if(!instance_exists(emote))
{
	instance_create_layer(place.x+x_off, place.y+y_off, "Instances",emote);
}

}