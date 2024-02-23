if (allow_sel)
{
	if (allow_text_to_speech)
	{
		audio_stop_sound(text_to_speech);
	}
	
	intro_seen = true;
	room_goto(scroll_start_sel(0));
}