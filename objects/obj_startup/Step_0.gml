// Title text transition control
if (!intro_seen)
{
	if (text_tran_in)
	{
		text_alpha += 1/(4*game_get_speed(gamespeed_fps));
		
		if (text_alpha >= 1)
		{
			text_tran_in = false;
			opt_text_in = true;
		}
	}
	
	if (opt_text_in)
	{
		text_pos -= 720/(4*game_get_speed(gamespeed_fps))
		
		if (text_pos <= 0)
		{
			opt_text_in = false;
			instance_create_layer(0 , 0 , "Instances" , obj_selector);
		}
	}
}