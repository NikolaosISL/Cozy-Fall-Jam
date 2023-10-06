if (is_active)
{
	dist = 0;

	while (place_meeting(x + dist, y, other) && place_meeting(x - dist, y, other))
	{
		dist++;
	}

	if (!place_meeting(x + dist, y, other))
	{
		other.x -= dist;
	}
	else
	{
		other.x += dist;
	}
}