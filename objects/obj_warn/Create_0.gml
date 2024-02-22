auto_window_control();
options_load();
output_text = "";

if (seen_warn == 1)
{
	state = 2;
}
else
{
	state = 0;
	audio_play_sound(snd_tts_accessibility, 1, false);
}

output_text = "";