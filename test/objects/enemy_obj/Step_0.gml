x += horspeed;
y += verspeed;

verspeed = grv;

if (place_meeting(x, y, teleporterRed_obj))
{
	y = teleporterBlue_obj.y;
	hp--;
}

if (place_meeting(x, y, blockPlaced_obj))
{
	for (i = 0; i < instance_number(blockPlaced_obj); i += 1)
	{
		if (instance_find(blockPlaced_obj, i).x < x + 64 && instance_find(blockPlaced_obj, i).x > x - 64)
		{
			if (instance_find(blockPlaced_obj, i).y < y + 64 && instance_find(blockPlaced_obj, i).y > y - 64)
			{
				instance_destroy(instance_find(blockPlaced_obj, i));
			}
		}
	}
	instance_destroy();
}

if (hp <= 0)
{
	instance_destroy();
}