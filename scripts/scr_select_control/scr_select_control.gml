// Values: -1 = down, 1 = up, 0 = enter


// Main menu selctions
function scroll_start_sel(_control)
{
	static selection = 0;
	//room_array = [rm_levels , rm_options , rm_credits];
	
	if (_control == -1 and selection < 2)
	{
		selection++;
		audio_play_sound(snd_sfx_scroll, 2, false);
	}
	else if (_control == 1 and selection > 0)
	{
		selection--;
		audio_play_sound(snd_sfx_scroll, 2, false);
	}
	else if (_control == 0)
	{
		//return room_array[selection];
	}
	
	return selection;
}