draw_alpha -= 1/(1*game_get_speed(gamespeed_fps));
		
if (draw_alpha <= 0)
{
	instance_destroy(self);
}