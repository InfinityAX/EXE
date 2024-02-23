if (state == 0)
{
	options_set_flash(0);
	options_set_shake(0);
	output_text = "The game contains a host of sensitive topics, including suicide.\nIf you are sensitive to these topics, you can close the game now\nby pressing ESCAPE. Otherwise, press ENTER to proceed.\nThank you for supporting AX Media.";
	play_tts(snd_tts_warning);
	state++;
}
else
{
	audio_stop_all();
	options_set_seen_warn();
	room_goto(rm_startup);
}