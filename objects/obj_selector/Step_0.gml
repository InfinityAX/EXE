if (!intro_seen)
{
	if (tran_in)
	{
		image_alpha += 1/(1*game_get_speed(gamespeed_fps));
		
		if (image_alpha >= 1)
		{
			tran_in = false;
			
			if (!allow_text_to_speech)
			{
				allow_sel = truw;
			}
		}
	}
}

y = 400 + (scroll_start_sel(5)*80);