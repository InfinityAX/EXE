auto_window_control();
game_started = start_the_game(false);
text_alpha = 0;
text_pos = 720;
text_tran_in = false;
play_cont = "PLAY";
opt_text_in = false;

// Play aound if not playing
if (!audio_is_playing(snd_bg_aether))
{
	audio_play_sound(snd_bg_aether, 0, true);
}

alarm_set(0, 2*game_get_speed(gamespeed_fps));

// Testing
//audio_stop_all();
//room_goto(rm_you_are_not_funny);