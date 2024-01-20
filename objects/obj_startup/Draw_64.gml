draw_set_alpha(text_alpha);
draw_set_font(op_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/2, "THE END");


if (!game_started)
{
	if (text_tran_in)
	{
		text_alpha += 1/game_get_speed(gamespeed_fps);
		
		if (text_alpha > 1)
		{
			text_tran_in = false;
		}
	}
}
else
{
	text_alpha = 1;
}