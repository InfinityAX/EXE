// Audio streams
globalvar main_audio;
globalvar text_to_speech;


// Play and adjust the main game music
function audio_play_main_music()
{
	gain = 0.5;
	
	if (!audio_is_playing(snd_bg_aether))
	{
		if (!allow_text_to_speech)
		{
			gain = 1;
		}
	
		main_audio = audio_play_sound(snd_bg_aether, 1, true, gain);
	}
	else if (audio_is_paused(main_audio))
	{
		audio_resume_sound(main_audio);
	}
	else
	{
		if (!allow_text_to_speech)
		{
			gain = 1;
		}
		
		audio_sound_gain(main_audio, gain, 0);
	}
}


// TTS audio control
function play_tts(_tts_audio)
{
	static first_use = true;
	
	if (!first_use)
	{
		snd_id = text_to_speech;
		audio_stop_sound(snd_id);
	}
	else
	{
		first_use = false;
	}
	
	text_to_speech = audio_play_sound(_tts_audio, 100, false);
}