chance = choose(1,2,3);

if (chance == 1 || chance == 2)
{
	instance_create_layer(teleporterBlue_obj.x + random_range(-300, 300),teleporterBlue_obj.y, "Instances", block_obj);
}
if (chance == 3)
{
	instance_create_layer(teleporterBlue_obj.x + random_range(-300, 300),teleporterBlue_obj.y, "Instances", enemy_obj);
}

alarm[0] = 250;

