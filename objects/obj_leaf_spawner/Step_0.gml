
var _chance = irandom(50);

if (_chance == 0)
{
	var _x = random(480);
	instance_create_layer(_x, 0, "Leaves", obj_leaf);
}

time_source_start(_timer);

if (_time >= 60)
{
	obj_transition.target = rm_game_over;
	obj_transition.mode = TRANS_MODE.GOTO;
	time_source_destroy(_timer);
	instance_destroy();
}