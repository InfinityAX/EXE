// 0 = down, 1 = up, 2 = enter
function scroll_start_sel(_control)
{
	static selection = 0;
	static room_array = [rm_levels , rm_options , rm_credits];
	
	if (_control == 0 and selection < 2)
	{
		selection++;
	}
	else if (_control == 1 and selection > 0)
	{
		selection--;
	}
	else if (_control == 2)
	{
		return room_array[selection];
	}
	
	return selection;
}