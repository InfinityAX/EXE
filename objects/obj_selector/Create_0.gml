allow_sel = false;
trigger = false;
selector_pos = 400;
x = room_width/2;
y = 400;

if (allow_text_to_speech)
{
	alarm_set(0, 2*game_get_speed(gamespeed_fps))
	play_tts(snd_tts_main_menu_controls);
}
else
{
	allow_sel = true;
}