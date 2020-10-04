x += horspeed;
y += verspeed;

verspeed = grv;

if (place_meeting(x, y, teleporterRed_obj))
{
	y = teleporterBlue_obj.y;
	hp--;
}

if (place_meeting(x, y, blockParent_obj))
{
	for (i = 0; i < instance_number(blockParent_obj); i += 1)
	{
		if (instance_find(blockParent_obj, i).x < x + 64 && instance_find(blockParent_obj, i).x > x - 64)
		{
			if (instance_find(blockParent_obj, i).y < y + 64 && instance_find(blockParent_obj, i).y > y - 64)
			{
				instance_destroy(instance_find(blockParent_obj, i));
			}
		}
	}
	if (distance_to_object(player_obj) < 64)
	{
		player_obj.hp--;
	}
	instance_destroy();
}

if (hp <= 0)
{
	instance_destroy();
}