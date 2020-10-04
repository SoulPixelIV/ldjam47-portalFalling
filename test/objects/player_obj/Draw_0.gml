draw_self();

if (blocks > 0)
{
	if (mouse_x < x + 96 && mouse_x > x - 96)
	{
		if (mouse_y < y + 96 && mouse_y > y - 96)
		{
			draw_sprite(buildingTile_spr, 0, mouse_x, mouse_y);
		}
		else
		{
			draw_sprite(buildingTile_spr, 1, mouse_x, mouse_y);
		}
	}
	else
	{
		draw_sprite(buildingTile_spr, 1, mouse_x, mouse_y);
	}
}
