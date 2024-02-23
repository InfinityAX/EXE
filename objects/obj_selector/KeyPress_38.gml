if (allow_sel)
{
	var _sel = scroll_start_sel(1);
	
	if (allow_text_to_speech)
	{
		play_tts(tts_room_array[_sel]);
	}
}