// Game started state
function start_the_game(_reset)
{
	static game_start = false;
	
	if (_reset == true)
	{
		game_start = false;
		return false;
	}
	else
	{
		if (game_start == false)
		{
			game_start = true;
			return false;
		}
		else
		{
			return true;
		}
	}
}


// Adjusts the game window automatically
function auto_window_control()
{
	var _dwidth = display_get_width();
	var _dheight = display_get_height();
	var _windowheight;
	var _windowwidth;
	
	if (_dwidth > 3840 and _dheight > 2160)
	{
		_windowheight = 2160;
		_windowwidth = 3840;
	}
	else if (_dwidth > 2560 and _dheight > 1440)
	{
		_windowheight = 1440;
		_windowwidth = 2560;
	}
	else if (_dwidth > 1920 and _dheight > 1080)
	{
		_windowheight = 1080;
		_windowwidth = 1920;
	}
	else if (_dwidth > 1600 and _dheight > 900)
	{
		_windowheight = 900;
		_windowwidth = 1600;
	}
	else
	{
		_windowheight = 720;
		_windowwidth = 1280;
	}
	
	var _xpos = (_dwidth / 2) - (_windowwidth/2);
	var _ypos = (_dheight / 2) - (_windowheight/2);
	
	manual_window_resizw(_windowwidth, _windowheight, _xpos, _ypos);
	
	return;
}


// Adjust the game window using parameters
function manual_window_resizw(_wwidth, _wheight, _xpos, _ypos)
{
	var _dwidth = display_get_width();
	var _dheight = display_get_height();
	
	if (_wwidth < 0)
	{
		_wwidth = 0;
	}
	
	if (_wwidth > _dwidth)
	{
		_wwidth = _dwidth;
	}
	
	if (_wheight < 0)
	{
		_wheight = 0;
	}
	
	if (_wheight > _dheight)
	{
		_wheight = _dheight;
	}
	
	if (_xpos < 0)
	{
		_xpos = 0;
	}
	
	if (_xpos > (_dwidth - _wwidth))
	{
		_xpos = _dwidth - _wwidth;
	}
	
	if (_ypos < 0)
	{
		_ypos = 0;
	}
	
	if (_ypos > (_dheight - _wheight))
	{
		_ypos = _dheight - _wheight;
	}
	
	window_set_rectangle(_xpos, _ypos, _wwidth, _wheight);
	
	return;
}


// Toggle fullscreen
function full_screen_toggle()
{
	if (!window_get_fullscreen())
	{
		window_set_fullscreen(true);
	}
	else
	{
		window_set_fullscreen(false);
	}
	
	return;
}