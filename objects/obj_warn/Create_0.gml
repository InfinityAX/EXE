auto_window_control();
options_load();

if (seen_warn == 1)
{
	state = 2;
}
else
{
	state = 0;
}

output_text = "";