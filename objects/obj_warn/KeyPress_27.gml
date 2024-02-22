if (state == 0)
{
	options_set_flash(1);
	options_set_shake(1);
	audio_stop_all();
	audio_play_sound(snd_tts_warning, 1, false);
}
else
{
	game_end();
}

state++;