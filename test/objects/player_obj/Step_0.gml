x += horspeed;
y += verspeed;

if (keyboard_check(ord("A")))
{
	horspeed = -2;
}

if (keyboard_check(ord("D")))
{
	horspeed = 2;
}

if (!keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	horspeed = 0;
}

verspeed = 4;

//Restart
if (keyboard_check_pressed(vk_f1))
{
	room_restart();
}

//Jump
if (keyboard_check_pressed(vk_space) && grounded)
{
	verspeed -= 64;
}

//Collision
//horspeed
if (!place_free(x + horspeed, y))
{
	if (sign(horspeed) != 0)
	{
		while (place_free(x + sign(horspeed) / 100, y))
		{
			x += sign(horspeed) / 100;
		}
		horspeed = 0;
	}
}

//verspeed
if (!place_free(x, y + verspeed))
{
	if (sign(verspeed) != 0)
	{
		while (place_free(x, y + sign(verspeed) / 100))
		{
			y += sign(verspeed) / 100;
		}
		verspeed = 0;
		grounded = true;
	}
}
else
{
	grounded = false;
}

//Teleport
if (place_meeting(x, y, teleporterRed_obj))
{
	y = teleporterBlue_obj.y;
	hp--;
}

//Collect Block
if (place_meeting(x, y, block_obj))
{
	blocks++;
	instance_destroy(instance_nearest(x, y, block_obj));
}

//Place Block
if (blocks > 0 && mouse_check_button_pressed(mb_left))
{
	if (mouse_x < x + 96 && mouse_x > x - 96)
	{
		if (mouse_y < y + 96 && mouse_y > y - 96)
		{
			currentBlock = instance_create_layer(mouse_x, mouse_y, "Instances", blockPlaced_obj);
			blocks--;
			score += 5
		}
	}
}

//Death
if (hp <= 0)
{
	room_goto(GameOver_room)
}