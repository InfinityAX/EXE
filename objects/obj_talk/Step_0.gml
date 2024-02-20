if (write_text)
{
	text_to_draw = string_insert("i", text_to_draw, string_length(text_to_draw));
	audio_play_sound(snd_sfx_zero_dialogue, 1, false);
}