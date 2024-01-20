game_started = start_the_game(false);
op_font = import_fonts_from_file(true);
text_alpha = 0;
text_tran_in = false;

if (!audio_is_playing(snd_bg_aether))
{
	audio_play_sound(snd_bg_aether, 0, true);
}


if (!game_started)
{
	auto_window_control();
	instance_create_depth(0, 0, 0, obj_windowsafecheck);
}

alarm_set(0, 2*game_get_speed(gamespeed_fps));