if (global.boss_state == boss.idle){
	idle();
}
else if (global.boss_state == boss.phase_1){
	phase_1();
}
else if (global.boss_state == boss.phase_2){
	phase_2();	
}
else if (global.boss_state == boss.phase_3){
	phase_3();
}
else if (global.boss_state == boss.boss_death){
	b_death();
}
show_debug_message(global.boss_health);
