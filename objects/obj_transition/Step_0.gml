/// @description Insert description here

if (keyboard_check(ord("R")))
{
	mode = TRANS_MODE.GOTO;
}

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		precent = max(0, precent - max((precent / 10), 0.005));
	}
	else
	{
		precent = min(4, precent + max((4 - precent) / 10, 0.005));
	}
	
	if (precent == 4 || precent == 0)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			mode = TRANS_MODE.OFF;
			break;
			
			case TRANS_MODE.GOTO:
			room_goto(target);
			mode = TRANS_MODE.INTRO;
			break;
			
			default:
			mode = TRANS_MODE.INTRO;
			break;
		}
	}
}