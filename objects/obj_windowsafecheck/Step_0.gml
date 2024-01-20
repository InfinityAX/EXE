if (window_get_x() < 0)
{
	window_set_position(0, window_get_y());
}

if (window_get_x() > display_get_width()-window_get_width())
{
	window_set_position(display_get_width()-window_get_width(), window_get_y());
}

if (window_get_y() < 0)
{
	window_set_position(window_get_x(), 0);
}

if (window_get_y() > display_get_height()-window_get_height())
{
	window_set_position(window_get_x(), display_get_height()-window_get_height());
}