delete_it = false;
alarm_set(0, 1*game_get_speed(gamespeed_fps));
full_screen_toggle();
audio_play_sound(snd_cheater_detect, 1, false);