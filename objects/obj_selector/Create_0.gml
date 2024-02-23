tran_in = true;
allow_sel = false;
trigger = false;
selector_pos = 400;
image_alpha = 0;
x = room_width/2;
y = 400;

if (intro_seen)
{
	image_alpha = 1;
}

if (allow_text_to_speech)
{
	tts_room_array = [snd_tts_play, snd_tts_options, snd_tts_credits];
	alarm_set(0, 2*game_get_speed(gamespeed_fps))
	play_tts(snd_tts_main_menu_controls);
}
else
{
	if (intro_seen)
	{
		allow_sel = true;
	}
}