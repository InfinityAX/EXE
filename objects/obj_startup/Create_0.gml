text_alpha = 0;
text_pos = 720;
text_tran_in = false;
play_cont = "PLAY";
opt_text_in = false;

// Display continue if a save exists
if (save_exists())
{
	play_cont = "CONTINUE";
}

audio_play_main_music();

if (!intro_seen)
{
	alarm_set(0, 2*game_get_speed(gamespeed_fps));
}
else
{
	instance_create_layer(0 , 0 , "Instances" , obj_default_room_in);
	text_alpha = 1;
	text_pos = 0;
}

