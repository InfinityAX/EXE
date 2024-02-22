// Global options variables
globalvar allow_flashing;
globalvar allow_window_shake;
globalvar seen_warn;


// Loads options file
function options_load()
{
	ini_open("user_data");
	allow_flashing = ini_read_real("OPTIONS", "FLASHING", 1);
	allow_window_shake = ini_read_real("OPTIONS", "SHAKING", 1);
	seen_warn = ini_read_real("OPTIONS", "NOTICE SEEN", 0);
	ini_close();
}


// Set flashing setting
function options_set_flash(_val)
{
	ini_open("user_data");
	allow_flashing = _val;
	ini_write_real("OPTIONS", "FLASHING", allow_flashing);
	ini_close();
}


// Set window shake
function options_set_shake(_val)
{
	ini_open("user_data");
	allow_window_shake = _val;
	ini_write_real("OPTIONS", "SHAKING", allow_window_shake);
	ini_close();
}


// Set seen warn
function options_set_seen_warn()
{
	ini_open("user_data");
	seen_warn = 1;
	ini_write_real("OPTIONS", "NOTICE SEEN", seen_warn);
	ini_close();
}


// Toggle flash
function options_toggle_flash()
{
	ini_open("user_data");
	
	if (allow_flashing == 1)
	{
		allow_flashing = 0;
	}
	else
	{
		allow_flashing = 1;
	}
	
	ini_write_real("OPTIONS", "FLASHING", allow_flashing);
	ini_close();
}


// Toggle shake
function options_toggle_shake()
{
	ini_open("user_data");
	
	if (allow_window_shake == 1)
	{
		allow_window_shake = 0;
	}
	else
	{
		allow_window_shake = 1;
	}
	
	ini_write_real("OPTIONS", "SHAKING", allow_window_shake);
	ini_close();
}


// Reset options
function options_reset()
{
	ini_open("user_data");
	ini_section_delete("OPTIONS");
	ini_close();
	options_load();
}