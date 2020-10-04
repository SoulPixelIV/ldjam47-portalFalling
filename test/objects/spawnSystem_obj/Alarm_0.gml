chance = choose(1,2,3,4);

if (chance == 1 || chance == 2)
{
	instance_create_layer(teleporterBlue_obj.x + random_range(-300, 300),teleporterBlue_obj.y, "Instances", block_obj);

}
if (chance == 3)
{
	instance_create_layer(teleporterBlue_obj.x + random_range(-300, 300),teleporterBlue_obj.y, "Instances", enemy_obj);
}
if (chance == 4)
{
	instance_create_layer(teleporterBlue_obj.x + random_range(-300, 300),teleporterBlue_obj.y, "Instances", coin_obj);
}

//Spawn Shop
if (random_range(0, 1000) > 999)
{
	positionX = teleporterBlue_obj.x + random_range(-300, 300);
	instance_create_layer(positionX, teleporterBlue_obj.y, "Instances", blockShop_obj);
	instance_create_layer(positionX + 32, teleporterBlue_obj.y, "Instances", blockShop_obj);
	instance_create_layer(positionX - 32, teleporterBlue_obj.y, "Instances", blockShop_obj);
	instance_create_layer(positionX + 64, teleporterBlue_obj.y, "Instances", blockShop_obj);
	instance_create_layer(positionX - 64, teleporterBlue_obj.y, "Instances", blockShop_obj);
	instance_create_layer(positionX - 64, teleporterBlue_obj.y - 32, "Instances", shopkeeper_obj);
}

alarm[0] = 250;

