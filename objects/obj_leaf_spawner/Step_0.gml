
var _chance = irandom(50);

if (_chance == 0)
{
	var _x = random(480);
	instance_create_layer(_x, 0, "Leaves", obj_leaf);
}

time_source_start(_timer);