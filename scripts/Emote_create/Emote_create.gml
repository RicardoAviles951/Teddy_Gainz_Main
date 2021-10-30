// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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