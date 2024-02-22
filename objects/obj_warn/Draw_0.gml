// Text config
draw_set_alpha(1);
draw_set_font(fnt_default);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

// Draws game's title
draw_text_transformed(room_width/2, room_height/4, "!!! ATTENTION !!!", 1, 1, 0);

draw_set_valign(fa_top);

// Draw "Play" or "Continue" text depending if the save file exists
draw_text_transformed(room_width/2, 300, output_text, 0.45, 0.45, 0);