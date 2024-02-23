// Global options variables
globalvar userdata_save_location;
globalvar allow_flashing;
globalvar allow_window_shake;
globalvar allow_text_to_speech;
globalvar seen_warn;


// Loads options file
function options_load()
{
	userdata_save_location = game_save_id + "user_data";
	ini_open(userdata_save_location);
	allow_flashing = ini_read_real("OPTIONS", "FLASHING", 1);
	allow_window_shake = ini_read_real("OPTIONS", "SHAKING", 1);
	allow_text_to_speech = ini_read_real("OPTIONS", "TTS", 1);
	seen_warn = ini_read_real("OPTIONS", "NOTICE SEEN", 0);
	ini_close();
}


// Set flashing setting
function options_set_flash(_val)
{
	ini_open(userdata_save_location);
	allow_flashing = _val;
	ini_write_real("OPTIONS", "FLASHING", allow_flashing);
	ini_close();
}


// Set window shake
function options_set_shake(_val)
{
	ini_open(userdata_save_location);
	allow_window_shake = _val;
	ini_write_real("OPTIONS", "SHAKING", allow_window_shake);
	ini_close();
}


// Set seen warn
function options_set_seen_warn()
{
	ini_open(userdata_save_location);
	seen_warn = 1;
	ini_write_real("OPTIONS", "NOTICE SEEN", seen_warn);
	ini_close();
}


// Toggle flash
function options_toggle_flash()
{
	ini_open(userdata_save_location);
	
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
	ini_open(userdata_save_location);
	
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


// Toggle TTS
function options_toggle_tts()
{
	ini_open(userdata_save_location);
	
	if (allow_text_to_speech == 1)
	{
		allow_text_to_speech = 0;
	}
	else
	{
		allow_text_to_speech = 1;
	}
	
	ini_write_real("OPTIONS", "SHAKING", allow_text_to_speech);
	ini_close();
}


// Reset options
function options_reset()
{
	ini_open(userdata_save_location);
	ini_section_delete("OPTIONS");
	ini_close();
	options_load();
}