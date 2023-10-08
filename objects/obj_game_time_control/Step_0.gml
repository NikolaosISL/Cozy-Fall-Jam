time_source_start(_timer);

if (_time >= time_max)
{
	obj_transition.target = rm_game_over;
	obj_transition.mode = TRANS_MODE.GOTO;
	time_source_destroy(_timer);
	instance_destroy();
}