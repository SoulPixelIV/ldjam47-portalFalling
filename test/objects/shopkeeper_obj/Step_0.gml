x += horspeed;
y += verspeed;

verspeed = grv;

if (place_meeting(x, y, teleporterRed_obj))
{
	instance_destroy();
}