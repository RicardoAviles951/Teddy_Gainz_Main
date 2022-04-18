/// @description set up variables for the cutscene
// You can write your code in this editor
target = noone;
currentStep = 0;
counter = 0;

enum cutSceneStates 
{
	Active,
	Paused 
}
number = 0
currentState = cutSceneStates.Active;

timer =0;