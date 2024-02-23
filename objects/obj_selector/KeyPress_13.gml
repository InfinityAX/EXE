if (allow_sel)
{
	if (allow_text_to_speech)
	{
		audio_stop_sound(text_to_speech);
	}
	
	room_goto(scroll_start_sel(0));
}