/// @description Set up variables for the cutscene
// You can write your code in this editor

currentStep = 0;
counter = 0;

enum cutSceneStates 
{
	Active,
	Paused 
}

currentState = cutSceneStates.Active;
