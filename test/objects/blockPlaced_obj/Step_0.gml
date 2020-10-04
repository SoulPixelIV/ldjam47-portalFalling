x += horspeed;
y += verspeed;

verspeed = grv;

if (place_meeting(x, y, teleporterRed_obj))
{
	y = teleporterBlue_obj.y;
}