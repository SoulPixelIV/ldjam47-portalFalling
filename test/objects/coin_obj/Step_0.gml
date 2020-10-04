x += horspeed;
y += verspeed;

verspeed = grv;



if (place_meeting(x, y, teleporterRed_obj))
{
	y = teleporterBlue_obj.y;
	hp--;
}

if (hp <= 0)
{
	instance_destroy();
}

if (place_meeting(x, y, player_obj))
{
	player_obj.coins += 1;
	score += 10;
	instance_destroy();
}