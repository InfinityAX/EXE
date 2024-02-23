if (state == 0)
{
	options_set_flash(1);
	options_set_shake(1);
	output_text = "The game contains a host of sensitive topics, including suicide.\nIf you are sensitive to these topics, you can close the game now\nby pressing ESCAPE. Otherwise, press ENTER to proceed.\nThank you for supporting AX Media.";
	play_tts(snd_tts_warning);
	state++;
}
else
{
	game_end();
}