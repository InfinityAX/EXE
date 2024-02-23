// Values: -1 = down, 1 = up, 0 = enter, other = return current value


// Main menu selctions
function scroll_start_sel(_control)
{
	static selection = 0;
	room_array = [rm_levels , rm_options , rm_credits];
	
	if (_control == -1 and selection < 2)
	{
		selection++;
		play_sfx(snd_sfx_scroll);
	}
	else if (_control == 1 and selection > 0)
	{
		selection--;
		play_sfx(snd_sfx_scroll);
	}
	
	
	if (_control == 0)
	{
		play_sfx(snd_sfx_ding);
		return room_array[selection];
	}
	else
	{
		return selection;
	}
}