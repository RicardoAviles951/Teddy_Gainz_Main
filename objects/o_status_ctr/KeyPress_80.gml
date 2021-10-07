/// @description Pauses the game when P is pressed.
if(game_is_paused == false) {
	game_is_paused = true;
	instance_deactivate_all(true);
}
else {
	game_is_paused = false;
	instance_activate_all();
}