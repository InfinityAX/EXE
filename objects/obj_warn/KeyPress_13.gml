if (state == 0)
{
	options_set_flash(0);
	options_set_shake(0);
	audio_stop_all();
	audio_play_sound(snd_tts_warning, 1, false);
}

state++;